import { OAuthStrategyEnum } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.enum";
import { IGoogleStrategy } from "@domain/auth/strategy/strategies/oauth/strategies/google.strategy.type";

export interface IOAuthStrategy {
  [OAuthStrategyEnum.GOOGLE]: IGoogleStrategy;
}
