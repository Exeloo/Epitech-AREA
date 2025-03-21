import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionCreateEventInput } from "~/provider/dto/inputs/user/action-create-event.input";
import { ActionCreateNotebookInput } from "~/provider/dto/inputs/user/action-create-notebook.input";
import { ActionSendMailInput } from "~/provider/dto/inputs/user/action-send-mail.input";
import { ActionUserGetProfileInput } from "~/provider/dto/inputs/user/action-user-get-profile.input";
import { ActionCreateEventResponse } from "~/provider/dto/responses/user/action-create-event.response";
import { ActionCreateNotebookResponse } from "~/provider/dto/responses/user/action-create-notebook.response";
import { ActionSendMailResponse } from "~/provider/dto/responses/user/action-send-mail.response";
import { ActionUserGetProfileResponse } from "~/provider/dto/responses/user/action-user-get-profile.response";
import { IActionResponse } from "~/provider/services/action.service";
import { AuthService } from "~/provider/shared/auth/auth.service";

@Injectable()
export class UserAction extends BaseHttpRepository {
  constructor(
    httpService: HttpService,
    configService: ConfigService,
    private readonly authService: AuthService,
  ) {
    super(httpService, configService);
  }

  @ManifestAction({
    id: "user-get-profile",
    name: "User Get Profile",
    description: "Action to Get Profile of user",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/globe.svg?alt=media&token=64b2b57a-53f2-484a-9b1f-5adb8d740e8f",
    color: "#004fe1",
    input: ActionUserGetProfileInput,
    output: ActionUserGetProfileResponse,
  })
  async userGetProfile(
    userId: number,
    input: ActionUserGetProfileInput,
  ): IActionResponse<ActionUserGetProfileResponse> {
    return this.get(`/me`, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }

  @ManifestAction({
    id: "create-event",
    name: "Create Event",
    description: "Action to Create Event",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/globe.svg?alt=media&token=64b2b57a-53f2-484a-9b1f-5adb8d740e8f",
    color: "#004fe1",
    input: ActionCreateEventInput,
    output: ActionCreateEventResponse,
  })
  async createEvent(
    userId: number,
    input: ActionCreateEventInput,
  ): IActionResponse<ActionCreateEventResponse> {
    return this.post(`/me/calendar/events`, input, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }

  @ManifestAction({
    id: "send-mail",
    name: "Send Mail",
    description: "Action to Send Mail",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/globe.svg?alt=media&token=64b2b57a-53f2-484a-9b1f-5adb8d740e8f",
    color: "#004fe1",
    input: ActionSendMailInput,
    output: ActionSendMailResponse,
  })
  async sendMail(
    userId: number,
    input: ActionSendMailInput,
  ): IActionResponse<ActionSendMailResponse> {
    return this.post(`/me/sendMail`, input, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }

  @ManifestAction({
    id: "create-notebook",
    name: "Create Notebook",
    description: "Action to Create Notebook",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/globe.svg?alt=media&token=64b2b57a-53f2-484a-9b1f-5adb8d740e8f",
    color: "#004fe1",
    input: ActionCreateNotebookInput,
    output: ActionCreateNotebookResponse,
  })
  async createNotebook(
    userId: number,
    input: ActionCreateNotebookInput,
  ): IActionResponse<ActionCreateNotebookResponse> {
    return this.post(`/me/onenote/notebooks`, input, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }
}
