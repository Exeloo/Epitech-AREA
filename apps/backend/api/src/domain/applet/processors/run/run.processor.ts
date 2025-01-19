import { Inject, Injectable, Logger } from "@nestjs/common";

import { AuthorizationException, BadInputException } from "@exception";

import {
  APPLET_NODE_PERSISTENCE_REPOSITORY,
  IAppletNodePersistenceRepository,
} from "@domain/applet/node/applet-node.repository.type";
import { IAppletNode } from "@domain/applet/node/types/applet-node.type";
import { ITriggerInput } from "@domain/applet/types/trigger-input.type";
import { ManifestPropertyEnum } from "@domain/provider/manifest/enums/manifest-property.enum";
import {
  IManifest,
  IManifestAction,
  IManifestField,
  IManifestProperty,
} from "@domain/provider/manifest/types/manifest.type";
import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "@domain/provider/provider.repository.type";
import {
  IProviderService,
  PROVIDER_SERVICE,
} from "@domain/provider/provider.service.type";
import { IProvider } from "@domain/provider/types/provider.type";

@Injectable()
export class AppletRunProcessor {
  private logger: Logger;

  constructor(
    @Inject(APPLET_NODE_PERSISTENCE_REPOSITORY)
    private readonly appletNodePRepository: IAppletNodePersistenceRepository,
    @Inject(PROVIDER_PERSISTENCE_REPOSITORY)
    private readonly providerPRepository: IProviderPersistenceRepository,
    @Inject(PROVIDER_SERVICE)
    private readonly providerService: IProviderService,
  ) {
    this.logger = new Logger(`DOMAIN (Applet ${this.constructor.name})`);
  }

  handleInputField(
    value: string,
    outputs: object[],
    manifest: IManifestProperty,
  ): string {
    return value.replaceAll(
      /\$\[([0-9]+)]\{([a-zA-Z0-9_-]*(?:\.[a-zA-Z0-9_-]+)*)}/gm,
      (_, rawIndex, rawValue) => {
        const index = +rawIndex;
        const values = rawValue.trimStart(".").split(".");
        if (index >= outputs.length) {
          throw new BadInputException(
            "BAD_INPUT_FIELD",
            "invalid index in input field",
          );
        }
        let res: any = outputs[index];
        for (const value of values) {
          try {
            res = res[value];
          } catch {
            throw new BadInputException(
              "BAD_INPUT_FIELD",
              "Invalid name not in output field",
            );
          }
          if (!res)
            throw new BadInputException(
              "BAD_INPUT_FIELD",
              "Invalid name not in output field",
            );
        }
        return this.transformField(
          typeof res === "object" ? JSON.stringify(res) : res.toString(),
          manifest,
        );
      },
    );
  }

  handleInput(
    input: object,
    outputs: object[],
    manifest: IManifestField,
  ): object {
    const res = {};
    for (const [key, value] of Object.entries(input)) {
      if (typeof value !== "string") {
        res[key] = value;
        continue;
      }
      res[key] = this.handleInputField(value, outputs, manifest[key]);
    }
    return res;
  }

  async process(provider: IProvider, data: ITriggerInput): Promise<void> {
    this.logger.debug(`Processing trigger ${provider.providerId}.${data.name}`);
    for (const id of data.triggered) {
      this.logger.debug(`Processing runner applet node ${id}`);
      try {
        const trigger = await this.appletNodePRepository.getById(id);
        const nodeProvider = await this.providerPRepository.getByAppletNodeId(
          trigger.id,
        );
        if (nodeProvider.id !== provider.id)
          throw new AuthorizationException(
            "UNAUTHORIZED_BAD_PROVIDER",
            "You cannot call a trigger of an other provider",
          );
        await this.processApplet(trigger, [data.data]);
      } catch (e) {
        this.logger.error(e);
      }
    }
  }

  private async processApplet(prevNode: IAppletNode, outputs: object[]) {
    const actions = await this.appletNodePRepository.getNextById(prevNode.id);
    for (const action of actions) {
      try {
        const provider = await this.providerPRepository.getByAppletNodeId(
          action.id,
        );
        const manifest = await this.providerService.getManifest(provider);
        const res = await this.providerService.runAction(
          provider,
          action,
          this.handleInput(
            action.input,
            outputs,
            this.getAction(action.actionId, manifest).input,
          ),
        );
        await this.processApplet(action, [...outputs, res]);
      } catch (e) {
        this.logger.error(e);
      }
    }
  }

  private getAction(actionId: string, manifest: IManifest): IManifestAction {
    const action = manifest.actions.find((action) => action.id === actionId);
    if (!action)
      throw new BadInputException("BAD_INPUT", "Unknown action", {
        cause: new Error(`Unknown action (${actionId})`),
        trace: 41,
      });
    return action;
  }

  private transformField(value: string, manifest: IManifestProperty): any {
    try {
      switch (manifest.type) {
        case ManifestPropertyEnum.STRING:
          return value;
        case ManifestPropertyEnum.NUMBER:
          return +value;
        case ManifestPropertyEnum.BOOLEAN:
          return value === "true";
        case ManifestPropertyEnum.DATE:
          return new Date(value);
        case ManifestPropertyEnum.ENUM:
          return value;
        case ManifestPropertyEnum.ARRAY:
          return JSON.parse(value);
        case ManifestPropertyEnum.OBJECT:
          return JSON.parse(value);
        default:
          return value;
      }
    } catch (e) {
      throw new BadInputException("BAD_INPUT", "Bad input type", {
        cause: e,
        trace: 40,
      });
    }
  }
}
