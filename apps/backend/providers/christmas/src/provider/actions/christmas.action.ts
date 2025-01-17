import {HttpService} from "@nestjs/axios";
import {Injectable} from "@nestjs/common";
import {ConfigService} from "@nestjs/config";

import {ManifestAction} from "@lib/manifest";

import {BaseHttpRepository} from "~/provider/common/base-http.repository";
import {ActionIsChristmasResponse} from "~/provider/dto/responses/action-is-christmas.response";
import {IActionResponse} from "~/provider/services/action.service";

import {EmptyInput} from "../dto/inputs/empty.input";

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
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/icon-stars.svg?alt=media&token=aa6e4b6d-c46f-4295-bbea-268bc84eff69",
    color: "#d40028",
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
