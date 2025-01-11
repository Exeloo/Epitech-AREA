import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionWeatherGetAtCityInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "City",
    description: "City to see the weather in",
  })
  city: string;
}
