import { Injectable } from "@nestjs/common";

import { OAuthStrategyEnum } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.enum";
import { StrategyEnum } from "@domain/auth/strategy/strategy.enum";
import { IStrategyInput } from "@domain/auth/strategy/strategy.type";
import { IUser } from "@domain/user/types/user.type";

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
  ) {
    this.strategyMap = {
      [StrategyEnum.PASSWORD]: passwordStrategy,
      [StrategyEnum.TOKEN]: tokenStrategy,
      [StrategyEnum.OAUTH]: oauthStrategy,
    };
  }

  authenticate<K extends keyof IStrategyInput>(
    type: K,
    input: IStrategyInput[K],
  ): Promise<IUser> {
    const strategy = this.strategyMap[type];
    if (!strategy) throw Error(); // @todo Error internal, strategy not implemented

    return strategy.authenticate(input);
  }

  getOAuthRedirect(provider: OAuthStrategyEnum): Promise<string> {
    return this.oauthStrategy.getOAuthRedirect(provider);
  }
}
