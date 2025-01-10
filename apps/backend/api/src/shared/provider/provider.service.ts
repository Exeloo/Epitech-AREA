import { Injectable } from "@nestjs/common";
import { ObjectLiteral } from "typeorm";

import { ID } from "@d-type/id.type";

import { IAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IManifest } from "@domain/provider/manifest/types/manifest.type";
import { IProviderService } from "@domain/provider/provider.service.type";
import { IProviderOAuthState } from "@domain/provider/types/provider-oauth-state.type";
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
    state: string,
  ): Promise<{ baseUrl: string }> {
    return this.providerRepository.getOAuthRedirect(
      provider.host,
      provider.apiKey,
      {
        state: state,
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

  getOAuthState(provider: IProvider, userId: ID): Promise<IProviderOAuthState> {
    return this.providerRepository.getOAuthState(
      provider.host,
      provider.apiKey,
      userId,
    );
  }
}
