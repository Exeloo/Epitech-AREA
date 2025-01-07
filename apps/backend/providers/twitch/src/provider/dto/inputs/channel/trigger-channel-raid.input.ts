import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerChannelRaidInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  from_broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  to_broadcaster_user_id: string;
}
