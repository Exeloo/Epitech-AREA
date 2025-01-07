import { Injectable } from "@nestjs/common";
import { ObjectLiteral } from "typeorm";

import { IAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IManifest } from "@domain/provider/manifest/types/manifest.type";
import { IProviderService } from "@domain/provider/provider.service.type";
import { IProvider } from "@domain/provider/types/provider.type";
import { IUser } from "@domain/user/types/user.type";

import { ProviderRepository } from "./provider.repository";

@Injectable()
export class ProviderService implements IProviderService {
  constructor(private readonly providerRepository: ProviderRepository) {}

  getManifest(provider: IProvider): Promise<IManifest> {
    return this.providerRepository.getManifest(provider.host, provider.apiKey);
  }

  registerTrigger(
    provider: IProvider,
    user: IUser,
    node: Pick<IAppletNode, "id" | "actionId" | "input">,
  ): Promise<void> {
    return this.providerRepository.registerTrigger(
      provider.host,
      provider.apiKey,
      {
        baseId: node.id,
        userId: user.id,
        actionId: node.actionId,
        input: node.input,
      },
    );
  }

  runAction(
    provider: IProvider,
    node: Pick<IAppletNode, "id" | "actionId">,
    data: object,
  ): Promise<object> {
    return this.providerRepository.runAction(provider.host, provider.apiKey, {
      name: node.actionId,
      data: data,
    });
  }

  getOAuthRedirect(
    provider: IProvider,
    userId: number,
  ): Promise<{ baseUrl: string }> {
    return this.providerRepository.getOAuthRedirect(
      provider.host,
      provider.apiKey,
      {
        userId: userId,
      },
    );
  }

  runOAuth(provider: IProvider, body: ObjectLiteral): Promise<void> {
    return this.providerRepository.runOAuth(
      provider.host,
      provider.apiKey,
      body,
    );
  }
}
