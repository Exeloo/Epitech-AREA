import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { GmailAction } from "~/provider/actions/gmail.action";
import { ActionGmailUsersGetProfileInput } from "~/provider/dto/inputs/gmail/action-gmail-users-get-profile.input";
import { ActionGmailUsersGetProfileResponse } from "~/provider/dto/responses/gmail/action-gmail-users-get-profile.response";
import { SendMessageInput } from "~/provider/dto/inputs/gmail/action-gmail-users-send-mail.input";
import { SendMessageResponse } from "~/provider/dto/responses/gmail/action-gmail-users-send-mail.response";
import { CreateDraftInput } from "~/provider/dto/inputs/gmail/action-gmail-users-create-draft.input";
import { CreateDraftResponse } from "~/provider/dto/responses/gmail/action-gmail-users-create-draft.response";
import { CreateLabelInput } from "~/provider/dto/inputs/gmail/action-gmail-users-create-label.input";
import { CreateLabelResponse } from "~/provider/dto/responses/gmail/action-gmail-users-create-label.response";
import { CreateForwardingAddressInput } from "~/provider/dto/inputs/gmail/action-gmail-users-create-forward.input";
import { CreateForwardingAddressResponse } from "~/provider/dto/responses/gmail/action-gmail-users-create-forward.response";

interface IActions {
  ["gmail.users.get-profile"]: {
    params: ActionGmailUsersGetProfileInput;
    response: ActionGmailUsersGetProfileResponse;
  };
  ["gmail.users.messages.send"]: {
    params: SendMessageInput;
    response: SendMessageResponse;
  };
  ["gmail.users.drafts.create"]: {
    params: CreateDraftInput;
    response: CreateDraftResponse;
  };
  ["gmail.users.labels.create"]: {
    params: CreateLabelInput;
    response: CreateLabelResponse;
  };
  ["gmail.users.settings.forwardingAddresses.create"]: {
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
