import { IOAuthStrategy } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.type";

import { IOAuthAuthStrategy } from "~/shared/auth/strategy/strategies/oauth/common/base.oauth.strategy.type";

export type IOAStrategy = {
  [K in keyof IOAuthStrategy]: IOAuthAuthStrategy<IOAuthStrategy[K]>;
};
