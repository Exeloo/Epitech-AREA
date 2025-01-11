import {Injectable} from "@nestjs/common";
import {ConfigService} from "@nestjs/config";

import {CsgoAction} from "~/provider/actions/csgo.action";
import {ActionCsgoGetProfileInput} from "~/provider/dto/inputs/csgo/action-csgo-get-profile.input";
import {ActionCsgoGetProfileResponse} from "~/provider/dto/responses/csgo/action-csgo-get-profile.response";

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

  constructor(configService: ConfigService, userAction: CsgoAction) {
    this.actions = {
      "csgo-get-profile": (input) =>
        userAction.userGetProfile(input),
    };
  }

  async onAction<K extends keyof IActions>(
    name: K,
    input: any,
  ): Promise<any> {
    try {
      const res = await this.actions[name](input);
      console.log(res);
      return res;
    } catch (error) {
      console.log(error);
    }

  }
}
