import { Injectable } from "@nestjs/common";

import { CsgoAction } from "~/provider/actions/csgo.action";
import { ActionCsgoGetProfileInput } from "~/provider/dto/inputs/csgo/action-csgo-get-profile.input";
import { ActionCsgoGetProfileResponse } from "~/provider/dto/responses/csgo/action-csgo-get-profile.response";

interface IActions {
  ["csgo-get-profile"]: {
    params: ActionCsgoGetProfileInput;
    response: ActionCsgoGetProfileResponse;
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

  constructor(csgoAction: CsgoAction) {
    this.actions = {
      "csgo-get-profile": (input) => csgoAction.csgoGetProfile(input),
    };
  }

  async onAction<K extends keyof IActions>(name: K, input: any): Promise<any> {
    return await this.actions[name](input);
  }
}
