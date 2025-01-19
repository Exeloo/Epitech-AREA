import { Inject, Injectable } from "@nestjs/common";

import { AsyncArrayUtils } from "@utils/async-array.utils";

import { BadInputException } from "@exception";

import {
  IAppletInput,
  IAppletNodeInput,
} from "@domain/applet/types/applet.input.type";
import { IApplet } from "@domain/applet/types/applet.type";
import {
  checkManifestType,
  getManifestElement,
} from "@domain/common/utils/manifest.utils";
import { ManifestPropertyEnum } from "@domain/provider/manifest/enums/manifest-property.enum";
import {
  IManifestAction,
  IManifestField,
  IManifestProperty,
  IManifestTrigger,
} from "@domain/provider/manifest/types/manifest.type";
import { ProviderService } from "@domain/provider/provider.service";
import {
  IProviderService,
  PROVIDER_SERVICE,
} from "@domain/provider/provider.service.type";

import { IAppletPreProcessor } from "../applet.processor.type";

@Injectable()
export class AppletInputProcessor implements IAppletPreProcessor<IAppletInput> {
  constructor(
    private readonly providerService: ProviderService,
    @Inject(PROVIDER_SERVICE)
    private readonly foreignProviderService: IProviderService,
  ) {}

  async process(_applet: IApplet, data: IAppletInput): Promise<IAppletInput> {
    data = {
      ...data,
      triggerNodes: await this.processNodes(data.triggerNodes),
    };
    return data;
  }

  private async processNodes(
    data: IAppletNodeInput[],
    isFirst: boolean = true,
  ): Promise<IAppletNodeInput[]> {
    data = await AsyncArrayUtils.map(data, async (node) => {
      node = await this.processNode(node, isFirst);
      return {
        ...node,
        next: await this.processNodes(node.next, false),
      };
    });
    return data;
  }

  private async processNode(
    node: IAppletNodeInput,
    isFirst: boolean,
  ): Promise<IAppletNodeInput> {
    const provider = await this.providerService.getById(node.providerId);
    const manifest = await this.foreignProviderService.getManifest(provider);
    const action = getManifestElement(node.actionId, manifest, !isFirst);

    node.input = JSON.parse(node.input as unknown as string);

    if (!action) {
      throw new BadInputException("BAD_INPUT", "Invalid Action ID", {
        cause: new Error(
          `Action id (${node.actionId}) does not exist on provider (${provider.providerId})`,
        ),
        trace: 30,
      });
    }

    if (isFirst) node.input = this.transformInput(node.input, action.input);

    this.verifyInput(node, action);
    return node;
  }

  private transformInput(input: object, manifest: IManifestField): object {
    const res = {};
    for (const [key, value] of Object.entries(input)) {
      const mField = manifest[key];
      if (!mField) {
        throw new BadInputException("BAD_INPUT", "Unkown Field", {
          cause: new Error(`Unkown field ${key}`),
          trace: 37,
        });
      }
      res[key] = this.transformField(value, mField);
    }
    return res;
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
        trace: 38,
      });
    }
  }

  private verifyInput(
    node: IAppletNodeInput,
    action: IManifestTrigger | IManifestAction,
  ): void {
    checkManifestType(node.actionId, node.input, action.input);
  }
}
