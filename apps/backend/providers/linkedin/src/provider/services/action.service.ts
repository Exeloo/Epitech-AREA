import {Injectable} from "@nestjs/common";
import {ConfigService} from "@nestjs/config";

import {UserAction} from "~/provider/actions/user.action";
import {ActionUserGetProfileInput} from "~/provider/dto/inputs/user/action-user-get-profile.input";
import {ActionUserGetProfileResponse} from "~/provider/dto/responses/user/action-user-get-profile.response";

interface IActions {
  ["user-get-profile"]: {
    params: ActionUserGetProfileInput;
    response: ActionUserGetProfileResponse;
  };
}

export type IActionResponse<R> = Promise<R>;

type IActionCallbacks = {
  [K in keyof IActions]: (
    userId: number,
    input: IActions[K]["params"],
  ) => IActionResponse<IActions[K]["response"]>;
};

@Injectable()
export class ActionService {
  private readonly actions: IActionCallbacks;

  constructor(configService: ConfigService, userAction: UserAction) {
    this.actions = {
      "user-get-profile": (userId, input) =>
        userAction.userGetProfile(userId, input),
    };
  }

  async onAction<K extends keyof IActions>(
    name: K,
    userId: number,
    input: any,
  ): Promise<any> {
    const res = await this.actions[name](userId, input);
    console.log(res);
    return res;
  }
}
