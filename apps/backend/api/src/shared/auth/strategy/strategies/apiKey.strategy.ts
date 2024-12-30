import { Inject, Injectable } from "@nestjs/common";

import { IApiKeyStrategy } from "@domain/auth/strategy/strategies/api-key.strategy.type";
import { StrategyEnum } from "@domain/auth/strategy/strategy.enum";
import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "@domain/provider/provider.repository.type";
import { IProvider } from "@domain/provider/types/provider.type";

import { AuthStrategy } from "~/shared/auth/strategy/common/base.strategy";

@Injectable()
export class ApiKeyStrategy extends AuthStrategy(StrategyEnum.API_KEY) {
  constructor(
    @Inject(PROVIDER_PERSISTENCE_REPOSITORY)
    private readonly providerPRepository: IProviderPersistenceRepository,
  ) {
    super();
  }

  async authenticate(input: IApiKeyStrategy): Promise<IProvider> {
    const provider = await this.providerPRepository.getByApiKey(input.apiKey);
    if (!provider)
      this.invalidAuth(`Invalid api-key (${input.apiKey}) does not exist`);

    return provider;
  }
}
