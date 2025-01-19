import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionWeatherGetAtCityInput } from "~/provider/dto/inputs/weather/action-weather-get-at-city.input";
import { ActionWeatherGetAtCityResponse } from "~/provider/dto/responses/weather/action-weather-get-at-city.response";
import { IActionResponse } from "~/provider/services/action.service";
import { AuthService } from "~/provider/shared/auth/auth.service";

@Injectable()
export class WeatherAction extends BaseHttpRepository {
  constructor(
    httpService: HttpService,
    configService: ConfigService,
    private readonly authService: AuthService,
  ) {
    super(httpService, configService);
  }

  @ManifestAction({
    id: "weather-get-at-city",
    name: "Weather Get At City",
    description: "Get weather at a city",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/nuage-soleil.svg?alt=media&token=3777ee9d-0d8b-4921-9f81-dc223432181b",
    color: "#75c4ef",
    input: ActionWeatherGetAtCityInput,
    output: ActionWeatherGetAtCityResponse,
  })
  async weatherGetAtCity(
    input: ActionWeatherGetAtCityInput,
  ): IActionResponse<ActionWeatherGetAtCityResponse> {
    return this.get(
      `/${input.city}?key=${this.authService.getToken()}&unitGroup=metric&include=fcst%2Chours%2Ccurrent`,
    );
  }
}
