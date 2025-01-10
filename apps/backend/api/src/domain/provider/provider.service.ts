import { Inject, Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { Request } from "express";

import { ID } from "@d-type/id.type";

import { BadInputException } from "@exception";

import { AuthService } from "@domain/auth/auth.service";
import { ManifestOAuthEnum } from "@domain/provider/manifest/enums/manifest-oauth.enum";
import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "@domain/provider/provider.repository.type";
import {
  IProviderService,
  PROVIDER_SERVICE,
} from "@domain/provider/provider.service.type";
import { IProviderOAuthState } from "@domain/provider/types/provider-oauth-state.type";
import {
  IProviderCreateInput,
  IProviderInput,
  IProviderUpdateInput,
} from "@domain/provider/types/provider.input.type";
import { IProvider } from "@domain/provider/types/provider.type";
import { IUser } from "@domain/user/types/user.type";

@Injectable()
export class ProviderService {
  private readonly apiUrl: string;

  constructor(
    @Inject(PROVIDER_PERSISTENCE_REPOSITORY)
    private readonly providerPRepository: IProviderPersistenceRepository,
    @Inject(PROVIDER_SERVICE)
    private readonly providerService: IProviderService,
    private readonly authService: AuthService,
    configService: ConfigService,
  ) {
    this.apiUrl = configService.getOrThrow("API_BASE_URL");
  }

  getById(id: ID): Promise<IProvider> {
    return this.providerPRepository.getById(id);
  }

  getAll(): Promise<IProvider[]> {
    return this.providerPRepository.getAll();
  }

  async createProvider(input: IProviderCreateInput): Promise<IProvider> {
    const currProvider = await this.providerPRepository.getByProviderId(
      input.providerId,
    );
    if (currProvider) {
      throw new BadInputException("BAD_INPUT", "Provider already exist", {
        cause: new Error(
          `Provider with providerId (${input.providerId}) already exist`,
        ),
        trace: 27,
      });
    }
    return this.create({
      ...input,
    });
  }

  getByAppletNodeId(id: ID): Promise<IProvider> {
    return this.providerPRepository.getByAppletNodeId(id);
  }

  async getOAuthRedirect(
    providerId: string,
    req: Request,
  ): Promise<{ baseUrl: string }> {
    const provider = await this.providerPRepository.getByProviderId(providerId);
    return this.providerService.getOAuthRedirect(
      provider,
      req.query.state as string,
    );
  }

  async oAuthCallback(
    providerId: string,
    req: Request,
  ): Promise<{ baseUrl: string }> {
    const provider = await this.providerPRepository.getByProviderId(providerId);
    await this.providerService.runOAuth(provider, req.query);
    return { baseUrl: this.authService.getRedirect() };
  }

  async getProviderOAuthState(
    id: ID,
    user: IUser,
  ): Promise<IProviderOAuthState> {
    const provider = await this.getById(id);
    const manifest = await this.providerService.getManifest(provider);
    if (manifest.oauth.type !== ManifestOAuthEnum.TOKEN) {
      return {
        authenticated: true,
        redirectUri: null,
      };
    }
    const oauthState = await this.providerService.getOAuthState(
      provider,
      user.id,
    );
    return {
      authenticated: oauthState.authenticated,
      redirectUri: `${this.apiUrl}/area/oauth/${provider.providerId}?state=${Buffer.from(JSON.stringify(user.id)).toString("base64")}`,
    };
  }

  private create(input: IProviderInput): Promise<IProvider> {
    return this.providerPRepository.createEntity(input);
  }

  private update(id: ID, input: IProviderUpdateInput): Promise<IProvider> {
    return this.providerPRepository.updateEntity(id, input);
  }
}
