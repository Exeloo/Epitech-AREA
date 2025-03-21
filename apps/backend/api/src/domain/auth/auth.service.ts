import { Inject, Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { Request } from "express";

import { urlQueryBuilder } from "@utils/url-query.utils";

import { AuthorizationException, BadInputException } from "@exception";

import { OAuthStrategyEnum } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.enum";
import { IOAuthStrategy } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.type";
import { IOAuthOptions } from "@domain/auth/types/oauth-options.type";
import { IAuthPasswordInput } from "@domain/auth/types/password.auth.type";
import {
  IAuthRefreshTokenInput,
  IAuthToken,
} from "@domain/auth/types/token.auth.type";
import { IProvider } from "@domain/provider/types/provider.type";
import { UserService } from "@domain/user/user.service";

import { IAuthenticateUser, IUser } from "../user/types/user.type";
import { AUTH_SERVICE, IAuthService } from "./auth.service.type";
import { StrategyEnum } from "./strategy/strategy.enum";

@Injectable()
export class AuthService {
  private readonly unknownUser = {
    email: "unknown",
    firstName: "unknown",
    lastName: "unknown",
  };

  constructor(
    private readonly configService: ConfigService,
    @Inject(AUTH_SERVICE)
    private readonly authService: IAuthService,
    private readonly userService: UserService,
  ) {}

  async login(input: IAuthPasswordInput): Promise<IAuthToken> {
    const user = await this.authPassword(input.email, input.password);
    return await this.authService.generateToken(user.id);
  }

  async refreshToken(input: IAuthRefreshTokenInput): Promise<IAuthToken> {
    const tokens = await this.authService.refreshToken(input.refreshToken);
    const user = await this.authToken(tokens.token);
    await this.userService.updateLastConnection(user.id);
    return tokens;
  }

  hashPassword(password: string): Promise<string> {
    return this.authService.hashPassword(password);
  }

  authPassword(email: string, password: string): Promise<IUser> {
    return this.authService.authenticate(StrategyEnum.PASSWORD, {
      email,
      password,
    });
  }

  authToken(token: string): Promise<IUser> {
    return this.authService.authenticate(StrategyEnum.TOKEN, {
      token,
    });
  }

  authApiKey(apiKey: string): Promise<IProvider> {
    return this.authService.authenticate(StrategyEnum.API_KEY, {
      apiKey,
    });
  }

  authOAuth(
    provider: OAuthStrategyEnum,
    req: Request,
  ): Promise<IAuthenticateUser> {
    if (!req.query) {
      throw new BadInputException("BAD_INPUT", "Invalid Query", {
        cause: new Error("Undefined query on OAuth"),
        trace: 28,
      });
    }
    if (req.query.error) {
      throw new AuthorizationException(
        "UNAUTHORIZED_ERROR_FROM_PROVIDER",
        "OAuth throw error",
        {
          cause: new Error(`OAuth throw error: ${req.query.error}`),
          trace: 29,
        },
      );
    }
    return this.authService.authenticate(StrategyEnum.OAUTH, {
      [provider]: req.query as unknown as IOAuthStrategy[typeof provider],
    });
  }

  async getOAuthRedirect(
    provider: OAuthStrategyEnum,
    options?: IOAuthOptions,
  ): Promise<{ baseUrl: string }> {
    return {
      baseUrl: await this.authService.getOAuthRedirect(provider, options),
    };
  }

  getRedirect(options?: IOAuthOptions) {
    if (options?.device === "mobile") return "aether://oauth-callback";
    return `${this.configService.getOrThrow("APP_BASE_URL")}/auth/login`;
  }

  async authOAuthRedirect(
    provider: OAuthStrategyEnum,
    req: Request,
  ): Promise<{ baseUrl: string }> {
    let auth: IAuthenticateUser;
    try {
      auth = await this.authOAuth(provider, req);
      let curr = await this.userService.getByEmail(auth.email);
      if (!curr) {
        curr = await this.userService.registerUser({
          ...this.unknownUser,
          ...Object.fromEntries(Object.entries(auth).filter(([, v]) => !!v)),
        });
      }
      const token = await this.authService.generateToken(curr.id);
      return {
        baseUrl: urlQueryBuilder(
          {
            token: token.token,
            refreshToken: token.refreshToken,
            tokenExpiresAt: Math.floor(token.tokenExpiresAt.getTime() / 1000),
          },
          this.getRedirect(auth.state),
        ),
      };
    } catch (error) {
      return {
        baseUrl: urlQueryBuilder(
          { error: error },
          this.getRedirect(auth?.state),
        ),
      };
    }
  }
}
