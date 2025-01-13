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
    img: "",
    color: "#ffffff",
    input: ActionUserGetProfileInput,
    output: ActionUserGetProfileResponse,
  })
  async userGetProfile(
    userId: number,
    input: ActionUserGetProfileInput,
  ): IActionResponse<ActionUserGetProfileResponse> {
    return this.get(
      `/api/oauth2/v2/identity?fields[user]=created,email,first_name,full_name,image_url,last_name,social_connections,thumb_url,url,vanity`,
      {
        headers: {
          Authorization: await this.authService.getToken(userId, input.user_id),
        },
      },
    );
  }
}
