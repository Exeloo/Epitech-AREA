import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerChannelSubscribeEndInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  broadcaster_user_id: string;
}
