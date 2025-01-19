import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionUserGetProfileInput } from "~/provider/dto/inputs/user/action-user-get-profile.input";
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
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/liste-des-membres.svg?alt=media&token=f694249e-3892-4bb9-825a-bbea563c2cb4",
    color: "#398ce5",
    input: ActionUserGetProfileInput,
    output: ActionUserGetProfileResponse,
  })
  async userGetProfile(
    userId: number,
    input: ActionUserGetProfileInput,
  ): IActionResponse<ActionUserGetProfileResponse> {
    return this.get(`/v2/userinfo`, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }
}
