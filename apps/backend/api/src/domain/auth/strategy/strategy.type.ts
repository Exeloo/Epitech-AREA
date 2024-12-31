import { IApiKeyStrategy } from "@domain/auth/strategy/strategies/api-key.strategy.type";
import { IProvider } from "@domain/provider/types/provider.type";
import { IAuthenticateUser, IUser } from "@domain/user/types/user.type";

import { IOAuthStrategy } from "./strategies/oauth/oauth.strategy.type";
import { IPasswordStrategy } from "./strategies/password.strategy.type";
import { ITokenStrategy } from "./strategies/token.strategy.type";
import { StrategyEnum } from "./strategy.enum";

export interface IStrategyInput {
  [StrategyEnum.PASSWORD]: { params: IPasswordStrategy; res: IUser };
  [StrategyEnum.TOKEN]: { params: ITokenStrategy; res: IUser };
  [StrategyEnum.OAUTH]: { params: IOAuthStrategy; res: IAuthenticateUser };
  [StrategyEnum.API_KEY]: { params: IApiKeyStrategy; res: IProvider };
}
