import { Injectable } from "@nestjs/common";

import { InternalException } from "@exception";

import { OAuthStrategyEnum } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.enum";
import { StrategyEnum } from "@domain/auth/strategy/strategy.enum";
import { IStrategyInput } from "@domain/auth/strategy/strategy.type";
import { IOAuthOptions } from "@domain/auth/types/oauth-options.type";

import { ApiKeyStrategy } from "~/shared/auth/strategy/strategies/apiKey.strategy";
import { IStrategy } from "~/shared/auth/strategy/strategy.type";

import { OAuthStrategy } from "./strategies/oauth/oauth.strategy";
import { PasswordStrategy } from "./strategies/password.strategy";
import { TokenStrategy } from "./strategies/token.strategy";

@Injectable()
export class StrategyService {
  private readonly strategyMap: IStrategy;

  constructor(
    passwordStrategy: PasswordStrategy,
    tokenStrategy: TokenStrategy,
    private readonly oauthStrategy: OAuthStrategy,
    apiKeyStrategy: ApiKeyStrategy,
  ) {
    this.strategyMap = {
      [StrategyEnum.PASSWORD]: passwordStrategy,
      [StrategyEnum.TOKEN]: tokenStrategy,
      [StrategyEnum.OAUTH]: oauthStrategy,
      [StrategyEnum.API_KEY]: apiKeyStrategy,
    };
  }

  authenticate<K extends keyof IStrategyInput>(
    type: K,
    input: IStrategyInput[K]["params"],
  ): Promise<IStrategyInput[K]["res"]> {
    const strategy = this.strategyMap[type];
    if (!strategy)
      throw new InternalException(26, {
        cause: new Error(`Strategy ${type} not implemented`),
      });

    return strategy.authenticate(input);
  }

  getOAuthRedirect(
    provider: OAuthStrategyEnum,
    options?: IOAuthOptions,
  ): Promise<string> {
    return this.oauthStrategy.getOAuthRedirect(provider, options);
  }
}
