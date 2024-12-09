import { ID } from "@d-type/id.type";

import { IStrategyInput } from "@domain/auth/strategy/strategy.type";
import { IAuthToken } from "@domain/auth/types/token.auth.type";
import { IUser } from "@domain/user/types/user.type";

export const AUTH_SERVICE = "AUTH_SERVICE";

export interface IAuthService {
  authenticate<K extends keyof IStrategyInput>(
    type: K,
    input: IStrategyInput[K],
  ): Promise<IUser>;

  hashPassword(password: string): Promise<string>;

  refreshToken(token: string): Promise<IAuthToken>;

  generateToken(userId: ID): Promise<IAuthToken>;

  getOAuthRedirect(provider: string): Promise<string>;
}
