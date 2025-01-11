import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionWeatherGetAtCityCurrentConditionsResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  datetime: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  datetimeEpoch: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  temp: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  feelslike: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  humidity: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  dew: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  precip: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  precipprob: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  snow: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  snowdepth: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  preciptype: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  windgust: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  windspeed: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  winddir: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  pressure: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  visibility: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  cloudcover: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  solarradiation: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  solarenergy: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  uvindex: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  conditions: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  icon: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  sunrise: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  sunriseEpoch: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  sunset: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  sunsetEpoch: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  moonphase: number;
}

@ManifestType()
export class ActionWeatherGetAtCityResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  queryCost: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  latitude: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  longitude: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  resolvedAddress: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  address: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  timezone: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  tzoffset: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  description: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: ActionWeatherGetAtCityCurrentConditionsResponse,
  })
  currentConditions: ActionWeatherGetAtCityCurrentConditionsResponse;
}
