import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionCsgoGetProfileInput } from "~/provider/dto/inputs/csgo/action-csgo-get-profile.input";
import { ActionCsgoGetProfileResponse } from "~/provider/dto/responses/csgo/action-csgo-get-profile.response";
import { IActionResponse } from "~/provider/services/action.service";
import { AuthService } from "~/provider/shared/auth/auth.service";

@Injectable()
export class CsgoAction extends BaseHttpRepository {
  constructor(
    httpService: HttpService,
    configService: ConfigService,
    private readonly authService: AuthService,
  ) {
    super(httpService, configService);
  }

  @ManifestAction({
    id: "csgo-get-profile",
    name: "CSGO Get Profile",
    description: "Action to Get Profile of csgo",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/pistolet.svg?alt=media&token=12829172-1f0b-4ecd-8c3c-967fda55f848",
    color: "#242426",
    input: ActionCsgoGetProfileInput,
    output: ActionCsgoGetProfileResponse,
  })
  csgoGetProfile(
    input: ActionCsgoGetProfileInput,
  ): IActionResponse<ActionCsgoGetProfileResponse> {
    return this.get(`/csgo/standard/profile/steam/${input.user_id}`, {
      headers: {
        "TRN-Api-Key": this.authService.getToken(),
      },
    });
  }
}
