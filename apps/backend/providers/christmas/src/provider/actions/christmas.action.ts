import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionIsChristmasResponse } from "~/provider/dto/responses/action-is-christmas.response";
import { IActionResponse } from "~/provider/services/action.service";

import { EmptyInput } from "../dto/inputs/empty.input";

@Injectable()
export class ChristmasAction extends BaseHttpRepository {
  // eslint-disable-next-line @typescript-eslint/no-useless-constructor
  constructor(httpService: HttpService, configService: ConfigService) {
    super(httpService, configService);
  }

  @ManifestAction({
    id: "is-christmas",
    name: "Is Christmas",
    description: "Call to know if it is Christmas",
    img: "",
    color: "#ffffff",
    input: EmptyInput,
    output: ActionIsChristmasResponse,
  })
  async isChristmas(): IActionResponse<ActionIsChristmasResponse> {
    const data = await this.get(`/api/is-today`);
    return {
      res: data as boolean,
    };
  }
}
