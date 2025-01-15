import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { UserAction } from "~/provider/actions/user.action";
import { ActionCreateEventInput } from "~/provider/dto/inputs/user/action-create-event.input";
import { ActionCreateNotebookInput } from "~/provider/dto/inputs/user/action-create-notebook.input";
import { ActionSendMailInput } from "~/provider/dto/inputs/user/action-send-mail.input";
import { ActionUserGetProfileInput } from "~/provider/dto/inputs/user/action-user-get-profile.input";
import { ActionCreateEventResponse } from "~/provider/dto/responses/user/action-create-event.response";
import { ActionCreateNotebookResponse } from "~/provider/dto/responses/user/action-create-notebook.response";
import { ActionSendMailResponse } from "~/provider/dto/responses/user/action-send-mail.response";
import { ActionUserGetProfileResponse } from "~/provider/dto/responses/user/action-user-get-profile.response";

interface IActions {
  ["user-get-profile"]: {
    params: ActionUserGetProfileInput;
    response: ActionUserGetProfileResponse;
  };
  ["create-event"]: {
    params: ActionCreateEventInput;
    response: ActionCreateEventResponse;
  };
  ["send-mail"]: {
    params: ActionSendMailInput;
    response: ActionSendMailResponse;
  };
  ["create-notebook"]: {
    params: ActionCreateNotebookInput;
    response: ActionCreateNotebookResponse;
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
      "create-event": (userId, input) => userAction.createEvent(userId, input),
      "send-mail": (userId, input) => userAction.sendMail(userId, input),
      "create-notebook": (userId, input) =>
        userAction.createNotebook(userId, input),
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
