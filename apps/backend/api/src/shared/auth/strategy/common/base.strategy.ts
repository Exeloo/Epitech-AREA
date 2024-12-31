import { AuthorizationException } from "@exception";

import { StrategyEnum } from "@domain/auth/strategy/strategy.enum";
import { IStrategyInput } from "@domain/auth/strategy/strategy.type";

import { IAuthStrategy } from "~/shared/auth/strategy/common/base.strategy.type";

export const AuthStrategy = <
  K extends keyof IStrategyInput,
  V extends IStrategyInput[K]["params"],
  R extends IStrategyInput[K]["res"],
>(
  name: K,
) => {
  abstract class BaseStrategy implements IAuthStrategy<V, R> {
    readonly name: StrategyEnum = name;

    abstract authenticate(input: V): Promise<R>;

    invalidAuth(cause: string): void {
      throw new AuthorizationException(
        "UNAUTHORIZED_INVALID_CREDENTIALS",
        "Invalid authentication credentials",
        {
          cause: new Error(cause),
          trace: 4,
        },
      );
    }
  }
  return BaseStrategy;
};
