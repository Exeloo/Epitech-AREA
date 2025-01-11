import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionAccountGetProfileResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  puuid: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  gameName: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  tagLine: string;
}
