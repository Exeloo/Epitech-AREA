import { Injectable } from "@nestjs/common";

import { IAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IManifest } from "@domain/provider/manifest/types/manifest.type";
import { IProviderService } from "@domain/provider/provider.service.type";
import { IProvider } from "@domain/provider/types/provider.type";

import { ProviderRepository } from "./provider.repository";

@Injectable()
export class ProviderService implements IProviderService {
  constructor(private readonly providerRepository: ProviderRepository) {}

  getManifest(provider: IProvider): Promise<IManifest> {
    return this.providerRepository.getManifest(provider.host, "api-key");
  }

  registerTrigger(
    provider: IProvider,
    node: Pick<IAppletNode, "id" | "actionId" | "input">,
  ): Promise<void> {
    return this.providerRepository.registerTrigger(provider.host, "api-key", {
      baseId: node.id,
      actionId: node.actionId,
      input: node.input,
    });
  }
}
