import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionGmailUsersGetProfileInput } from "~/provider/dto/inputs/gmail/action-gmail-users-get-profile.input";
import { ActionGmailUsersGetProfileResponse } from "~/provider/dto/responses/gmail/action-gmail-users-get-profile.response";
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
}
