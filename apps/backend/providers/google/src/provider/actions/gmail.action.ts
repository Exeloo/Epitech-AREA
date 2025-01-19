import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
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
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/liste-des-membres.svg?alt=media&token=f694249e-3892-4bb9-825a-bbea563c2cb4",
    color: "#307bf5",
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
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/avion-en-papier.svg?alt=media&token=dfb8b5e4-211b-4b94-ab3f-7b4171d7c736",
    color: "#16499c",
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
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/fichier-edition.svg?alt=media&token=48a62c0f-33b7-4d07-aa84-65085111df70",
    color: "#cf2b1e",
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
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/liste-de-filtres.svg?alt=media&token=95172861-235a-47af-b7f8-e1ad7cfebbf3",
    color: "#EA4335",
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
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/tournez-a-droite.svg?alt=media&token=4d822a4f-198a-4cf4-8e8d-6e104509eeaa",
    color: "#f7786e",
    input: CreateForwardingAddressInput,
    output: CreateForwardingAddressResponse,
  })
  async usersCreateForward(
    userId: number,
    input: CreateForwardingAddressInput,
  ): IActionResponse<CreateForwardingAddressResponse> {
    return this.post(
      `/users/${input.userId}/settings/forwardingAddresses`,
      input,
      {
        headers: {
          Authorization: await this.authService.getToken(userId, input.userId),
        },
      },
    );
  }
}
