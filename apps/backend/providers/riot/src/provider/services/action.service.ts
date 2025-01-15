import { Injectable } from "@nestjs/common";

import { AccountAction } from "~/provider/actions/account.action";
import { ActionAccountGetProfileInput } from "~/provider/dto/inputs/account/action-account-get-profile.input";
import { ActionAccountGetProfileResponse } from "~/provider/dto/responses/account/action-account-get-profile.response";

interface IActions {
  ["account-get-profile"]: {
    params: ActionAccountGetProfileInput;
    response: ActionAccountGetProfileResponse;
  };
}

export type IActionResponse<R> = Promise<R>;

type IActionCallbacks = {
  [K in keyof IActions]: (
    input: IActions[K]["params"],
  ) => IActionResponse<IActions[K]["response"]>;
};

@Injectable()
export class ActionService {
  private readonly actions: IActionCallbacks;

  constructor(accountAction: AccountAction) {
    this.actions = {
      "account-get-profile": (input) => accountAction.accountGetProfile(input),
    };
  }

  async onAction<K extends keyof IActions>(name: K, input: any): Promise<any> {
    return await this.actions[name](input);
  }
}
