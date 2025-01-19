import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { GmailAction } from "~/provider/actions/gmail.action";
import { CreateDraftInput } from "~/provider/dto/inputs/gmail/action-gmail-users-create-draft.input";
import { CreateForwardingAddressInput } from "~/provider/dto/inputs/gmail/action-gmail-users-create-forward.input";
import { CreateLabelInput } from "~/provider/dto/inputs/gmail/action-gmail-users-create-label.input";
import { ActionGmailUsersGetProfileInput } from "~/provider/dto/inputs/gmail/action-gmail-users-get-profile.input";
import { SendMessageInput } from "~/provider/dto/inputs/gmail/action-gmail-users-send-mail.input";
import { CreateDraftResponse } from "~/provider/dto/responses/gmail/action-gmail-users-create-draft.response";
import { CreateForwardingAddressResponse } from "~/provider/dto/responses/gmail/action-gmail-users-create-forward.response";
import { CreateLabelResponse } from "~/provider/dto/responses/gmail/action-gmail-users-create-label.response";
import { ActionGmailUsersGetProfileResponse } from "~/provider/dto/responses/gmail/action-gmail-users-get-profile.response";
import { SendMessageResponse } from "~/provider/dto/responses/gmail/action-gmail-users-send-mail.response";

interface IActions {
  ["gmail.users.get-profile"]: {
    params: ActionGmailUsersGetProfileInput;
    response: ActionGmailUsersGetProfileResponse;
  };
  ["gmail.users.send-mail"]: {
    params: SendMessageInput;
    response: SendMessageResponse;
  };
  ["gmail.users.create-draft"]: {
    params: CreateDraftInput;
    response: CreateDraftResponse;
  };
  ["gmail.users.create-label"]: {
    params: CreateLabelInput;
    response: CreateLabelResponse;
  };
  ["gmail.users.create-forward"]: {
    params: CreateForwardingAddressInput;
    response: CreateForwardingAddressResponse;
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
      "gmail.users.send-mail": (userId, input) =>
        gmailAction.usersSendMail(userId, input),
      "gmail.users.create-draft": (userId, input) =>
        gmailAction.usersCreateDraft(userId, input),
      "gmail.users.create-label": (userId, input) =>
        gmailAction.usersCreateLabel(userId, input),
      "gmail.users.create-forward": (userId, input) =>
        gmailAction.usersCreateForward(userId, input),
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
