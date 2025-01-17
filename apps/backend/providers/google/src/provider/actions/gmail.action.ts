import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
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
import { IActionResponse } from "~/provider/services/action.service";
import { AuthService } from "~/provider/shared/auth/auth.service";

@Injectable()
export class GmailAction extends BaseHttpRepository {
  constructor(
    httpService: HttpService,
    private readonly authService: AuthService,
  ) {
    super(httpService, "https://gmail.googleapis.com/gmail/v1");
  }

  @ManifestAction({
    id: "gmail.users.get-profile",
    name: "Gmail Get Profile",
    description: "Action to Get Profile of user on Gmail",
    img: "",
    color: "#ffffff",
    input: ActionGmailUsersGetProfileInput,
    output: ActionGmailUsersGetProfileResponse,
  })
  async usersGetProfile(
    userId: number,
    input: ActionGmailUsersGetProfileInput,
  ): IActionResponse<ActionGmailUsersGetProfileResponse> {
    return this.get(`/users/${input.user_id}/profile`, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }

  @ManifestAction({
    id: "gmail.users.send-mail",
    name: "Gmail Send Mail",
    description: "Action to Send Mail on Gmail",
    img: "",
    color: "#ffffff",
    input: SendMessageInput,
    output: SendMessageResponse,
  })
  async usersSendMail(
    userId: number,
    input: SendMessageInput,
  ): IActionResponse<SendMessageResponse> {
    return this.post(`/users/${input.userId}/messages/send`, input.message, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.userId),
      },
    });
  }

  @ManifestAction({
    id: "gmail.users.create-draft",
    name: "Gmail Create Draft",
    description: "Action to Create Draft on Gmail",
    img: "",
    color: "#ffffff",
    input: CreateDraftInput,
    output: CreateDraftResponse,
  })
  async usersCreateDraft(
    userId: number,
    input: CreateDraftInput,
  ): IActionResponse<CreateDraftResponse> {
    return this.post(`/users/${input.userId}/drafts`, input.message, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.userId),
      },
    });
  }

  @ManifestAction({
    id: "gmail.users.create-label",
    name: "Gmail Create Label",
    description: "Action to Create Label on Gmail",
    img: "",
    color: "#ffffff",
    input: CreateLabelInput,
    output: CreateLabelResponse,
  })
  async usersCreateLabel(
    userId: number,
    input: CreateLabelInput,
  ): IActionResponse<CreateLabelResponse> {
    return this.post(`/users/${input.userId}/labels`, input, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.userId),
      },
    });
  }

  @ManifestAction({
    id: "gmail.users.create-forward",
    name: "Gmail Create Forward",
    description: "Action to Create Forward on Gmail",
    img: "",
    color: "#ffffff",
    input: CreateForwardingAddressInput,
    output: CreateForwardingAddressResponse,
  })
  async usersCreateForward(
    userId: number,
    input: CreateForwardingAddressInput,
  ): IActionResponse<CreateForwardingAddressResponse> {
    return this.post(`/users/${input.userId}/settings/forwardingAddresses`, input, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.userId),
      },
    });
  }
}
