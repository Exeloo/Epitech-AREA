import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { firstValueFrom } from "rxjs";

import { OAuthStrategyEnum } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.enum";
import { IGoogleStrategy } from "@domain/auth/strategy/strategies/oauth/strategies/google.strategy.type";
import { IAuthenticateUser } from "@domain/user/types/user.type";

import { BaseOAuthStrategy } from "~/shared/auth/strategy/strategies/oauth/common/base.oauth.strategy";

@Injectable()
export class GoogleOAuthStrategy extends BaseOAuthStrategy(
  OAuthStrategyEnum.GOOGLE,
) {
  constructor(configService: ConfigService, httpService: HttpService) {
    super(
      configService,
      httpService,
      "https://accounts.google.com/o/oauth2/v2/auth",
      "redirect_uri",
      {
        clientId: configService.getOrThrow("GOOGLE_CLIENT_ID"),
        responseType: "code",
        scope:
          "https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile",
        includeGrantedScopes: "true",
      },
      "https://www.googleapis.com/oauth2/v4/token",
      {
        clientId: configService.getOrThrow("GOOGLE_CLIENT_ID"),
        clientSecret: configService.getOrThrow("GOOGLE_CLIENT_SECRET"),
        grantType: "authorization_code",
      },
    );
  }

  async validate(input: IGoogleStrategy): Promise<IAuthenticateUser> {
    const token = await this.getToken(input.code);
    const data = (
      await firstValueFrom(
        this.httpService.get("https://www.googleapis.com/oauth2/v3/userinfo", {
          headers: {
            Authorization: token,
          },
        }),
      )
    ).data;
    return {
      email: data.email,
      firstName: data.given_name,
      lastName: data.family_name,
    };
  }
}
