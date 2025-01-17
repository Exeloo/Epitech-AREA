import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerChannelUnbanInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "broadcaster_id",
    description: "The ID of the broadcaster where the unban was triggered",
  })
  broadcaster_user_id: string;
}
