import { Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import { IAuthService } from "@domain/auth/auth.service.type";
import { OAuthStrategyEnum } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.enum";
import { IStrategyInput } from "@domain/auth/strategy/strategy.type";
import { IOAuthOptions } from "@domain/auth/types/oauth-options.type";
import { IAuthToken } from "@domain/auth/types/token.auth.type";
import { IUser } from "@domain/user/types/user.type";

import { PasswordService } from "./services/password/password.service";
import { TokenService } from "./services/token/token.service";
import { StrategyService } from "./strategy/strategy.service";

@Injectable()
export class AuthService implements IAuthService {
  constructor(
    private readonly strategyService: StrategyService,
    private readonly passwordService: PasswordService,
    private readonly tokenService: TokenService,
  ) {}

  authenticate<K extends keyof IStrategyInput>(
    type: K,
    input: IStrategyInput[K],
  ): Promise<IUser> {
    return this.strategyService.authenticate(type, input);
  }

  hashPassword(password: string): Promise<string> {
    return this.passwordService.encrypt(password);
  }

  refreshToken(token: string): Promise<IAuthToken> {
    return this.tokenService.refreshToken(token);
  }

  generateToken(userId: ID): Promise<IAuthToken> {
    return this.tokenService.generateToken(userId);
  }

  getOAuthRedirect(
    provider: OAuthStrategyEnum,
    options?: IOAuthOptions,
  ): Promise<string> {
    return this.strategyService.getOAuthRedirect(provider, options);
  }
}
