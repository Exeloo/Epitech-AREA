import { OAuthStrategyEnum } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.enum";

import { BaseAuthController } from "./base.auth.controller";

export class GoogleAuthController extends BaseAuthController(
  OAuthStrategyEnum.GOOGLE,
) {}
