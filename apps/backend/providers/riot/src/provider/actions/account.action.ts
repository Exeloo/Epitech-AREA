import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionAccountGetProfileInput } from "~/provider/dto/inputs/account/action-account-get-profile.input";
import { ActionAccountGetProfileResponse } from "~/provider/dto/responses/account/action-account-get-profile.response";
import { IActionResponse } from "~/provider/services/action.service";
import { AuthService } from "~/provider/shared/auth/auth.service";

@Injectable()
export class AccountAction extends BaseHttpRepository {
  constructor(
    httpService: HttpService,
    configService: ConfigService,
    private readonly authService: AuthService,
  ) {
    super(httpService, configService);
  }

  @ManifestAction({
    id: "account-get-profile",
    name: "Account Get Profile",
    description: "Action to Get Profile",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/liste-des-membres.svg?alt=media&token=f694249e-3892-4bb9-825a-bbea563c2cb4",
    color: "#f55150",
    input: ActionAccountGetProfileInput,
    output: ActionAccountGetProfileResponse,
  })
  accountGetProfile(
    input: ActionAccountGetProfileInput,
  ): IActionResponse<ActionAccountGetProfileResponse> {
    return this.get(
      `/riot/account/v1/accounts/by-riot-id/${input.username}/${input.tag}`,
      {
        headers: {
          "X-Riot-Token": this.authService.getToken(),
        },
      },
    );
  }
}
