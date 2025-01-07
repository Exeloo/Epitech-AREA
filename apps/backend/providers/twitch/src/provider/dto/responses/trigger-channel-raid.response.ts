import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerRaidEventResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  from_broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  from_broadcaster_user_login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  from_broadcaster_user_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  to_broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  to_broadcaster_user_login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  to_broadcaster_user_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  viewers: number;
}