import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { GmailAction } from "~/provider/actions/gmail.action";
import { ActionGmailUsersGetProfileInput } from "~/provider/dto/inputs/gmail/action-gmail-users-get-profile.input";
import { ActionGmailUsersGetProfileResponse } from "~/provider/dto/responses/gmail/action-gmail-users-get-profile.response";

interface IActions {
  ["gmail.users.get-profile"]: {
    params: ActionGmailUsersGetProfileInput;
    response: ActionGmailUsersGetProfileResponse;
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

  constructor(configService: ConfigService, gmailAction: GmailAction) {
    this.actions = {
      "gmail.users.get-profile": (userId, input) =>
        gmailAction.usersGetProfile(userId, input),
    };
  }

  async onAction<K extends keyof IActions>(
    name: K,
    userId: number,
    input: any,
  ): Promise<any> {
    return await this.actions[name](userId, input);
  }
}
