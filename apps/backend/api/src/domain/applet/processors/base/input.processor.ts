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
import {
  IManifestAction,
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

    this.verifyInput(node, action);
    return node;
  }

  private verifyInput(
    node: IAppletNodeInput,
    action: IManifestTrigger | IManifestAction,
  ): void {
    checkManifestType(node.actionId, node.input, action.input);
  }
}
