import { Injectable } from "@nestjs/common";

import { WeatherAction } from "~/provider/actions/weather.action";
import { ActionWeatherGetAtCityInput } from "~/provider/dto/inputs/weather/action-weather-get-at-city.input";
import { ActionWeatherGetAtCityResponse } from "~/provider/dto/responses/weather/action-weather-get-at-city.response";

interface IActions {
  ["weather-get-at-city"]: {
    params: ActionWeatherGetAtCityInput;
    response: ActionWeatherGetAtCityResponse;
  };
}

export type IActionResponse<R> = Promise<R>;

type IActionCallbacks = {
  [K in keyof IActions]: (
    userId: number,
    input: IActions[K]["params"],
  ) => IActionResponse<IActions[K]["response"]>;
};

@Injectable()
export class ActionService {
  private readonly actions: IActionCallbacks;

  constructor(weatherAction: WeatherAction) {
    this.actions = {
      "weather-get-at-city": (userId, input) =>
        weatherAction.weatherGetAtCity(input),
    };
  }

  async onAction<K extends keyof IActions>(
    name: K,
    userId: number,
    input: any,
  ): Promise<any> {
    return await this.actions[name](userId, input);
  }
}
