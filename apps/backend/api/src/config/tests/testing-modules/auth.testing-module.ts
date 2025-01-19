import { HttpModule } from "@nestjs/axios";
import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { JwtModule } from "@nestjs/jwt";

import { AUTH_SERVICE } from "@domain/auth/auth.service.type";

import { AuthService } from "~/shared/auth/auth.service";
import { PasswordEncryptor } from "~/shared/auth/services/password/password.encryptor";
import { PasswordService } from "~/shared/auth/services/password/password.service";
import { TokenEncryptor } from "~/shared/auth/services/token/token.encryptor";
import { TokenService } from "~/shared/auth/services/token/token.service";
import { ApiKeyStrategy } from "~/shared/auth/strategy/strategies/apiKey.strategy";
import { OAuthStrategy } from "~/shared/auth/strategy/strategies/oauth/oauth.strategy";
import { GoogleOAuthStrategy } from "~/shared/auth/strategy/strategies/oauth/strategies/google.strategy";
import { PasswordStrategy } from "~/shared/auth/strategy/strategies/password.strategy";
import { TokenStrategy } from "~/shared/auth/strategy/strategies/token.strategy";
import { StrategyService } from "~/shared/auth/strategy/strategy.service";

import { PersistenceTestingModule } from "./persistence.testing-module";

@Module({
  imports: [ConfigModule, HttpModule, JwtModule, PersistenceTestingModule],
  providers: [
    {
      provide: AUTH_SERVICE,
      useClass: AuthService,
    },
    StrategyService,

    PasswordService,
    PasswordEncryptor,

    TokenService,
    TokenEncryptor,

    PasswordStrategy,
    TokenStrategy,
    OAuthStrategy,
    ApiKeyStrategy,

    GoogleOAuthStrategy,
  ],
  exports: [AUTH_SERVICE],
})
export class AuthTestingModule {}
