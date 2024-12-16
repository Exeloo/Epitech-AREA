import { HttpService } from "@nestjs/axios";
import { ConfigService } from "@nestjs/config";
import { firstValueFrom } from "rxjs";

import { camelToSnake } from "@utils/case.utils";
import { urlQueryBuilder } from "@utils/url-query.utils";

import { AuthorizationException } from "@exception";

import { OAuthStrategyEnum } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.enum";
import { IOAuthStrategy } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.type";
import { IAuthenticateUser } from "@domain/user/types/user.type";

import { IOAuthAuthStrategy } from "~/shared/auth/strategy/strategies/oauth/common/base.oauth.strategy.type";

export const BaseOAuthStrategy = <
  K extends keyof IOAuthStrategy,
  V extends IOAuthStrategy[K],
>(
  name: K,
) => {
  abstract class BaseStrategy implements IOAuthAuthStrategy<V> {
    readonly name: OAuthStrategyEnum = name;
    readonly redirectUrl: string;

    protected constructor(
      readonly configService: ConfigService,
      readonly httpService: HttpService,
      readonly baseURL: string,
      readonly redirectFieldName: string,
      readonly options: object,
      readonly tokenURL: string,
      readonly tokenOptions: object,
    ) {
      this.redirectUrl = `${this.configService.getOrThrow("API_BASE_URL")}/auth/${this.name}/callback`;
    }

    async redirect(): Promise<string> {
      return urlQueryBuilder(
        {
          [this.redirectFieldName]: this.redirectUrl,
          ...this.options,
        },
        this.baseURL,
        true,
      );
    }

    async getToken(code: string): Promise<string> {
      const data = Object.fromEntries(
        Object.entries({
          code,
          [this.redirectFieldName]: this.redirectUrl,
          ...this.tokenOptions,
        }).map(([key, value]) => [camelToSnake(key), value]),
      );
      const res = await firstValueFrom(
        this.httpService.post(this.tokenURL, data),
      );
      if (!res.data.token_type) return res.data.access_token;
      return `${res.data.token_type} ${res.data.access_token}`;
    }

    abstract validate(input: V): Promise<IAuthenticateUser>;

    invalidAuth(cause: string): void {
      throw new AuthorizationException(
        "UNAUTHORIZED_INVALID_OAUTH_CREDENTIALS",
        "Invalid authentication",
        {
          cause: new Error(cause),
          trace: 25,
        },
      );
    }
  }
  return BaseStrategy;
};
