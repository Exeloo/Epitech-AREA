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
    img: "",
    color: "#ffffff",
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
