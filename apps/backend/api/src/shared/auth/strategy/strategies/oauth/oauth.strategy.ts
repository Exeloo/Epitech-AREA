import { Injectable } from "@nestjs/common";

import { InternalException } from "@exception";

import { OAuthStrategyEnum } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.enum";
import { IOAuthStrategy } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.type";
import { StrategyEnum } from "@domain/auth/strategy/strategy.enum";
import { IOAuthOptions } from "@domain/auth/types/oauth-options.type";
import { IUser } from "@domain/user/types/user.type";

import { AuthStrategy } from "~/shared/auth/strategy/common/base.strategy";
import { IOAStrategy } from "~/shared/auth/strategy/strategies/oauth/oauth.strategy.type";
import { GoogleOAuthStrategy } from "~/shared/auth/strategy/strategies/oauth/strategies/google.strategy";

@Injectable()
export class OAuthStrategy extends AuthStrategy(StrategyEnum.OAUTH) {
  private readonly strategyMap: IOAStrategy;

  constructor(googleStrategy: GoogleOAuthStrategy) {
    super();
    this.strategyMap = {
      [OAuthStrategyEnum.GOOGLE]: googleStrategy,
    };
  }

  async authenticate(input: IOAuthStrategy): Promise<IUser> {
    const [provider, value] = Object.entries(input)[0];
    const strategy = this.strategyMap[provider];
    if (!strategy)
      throw new InternalException(24, {
        cause: new Error(`Strategy ${provider} not implemented`),
      });

    return (await strategy.validate(value)) as IUser;
  }

  getOAuthRedirect<K extends keyof IOAuthStrategy>(
    provider: K,
    options?: IOAuthOptions,
  ): Promise<string> {
    const strategy = this.strategyMap[provider];
    return strategy.redirect(options);
  }
}
