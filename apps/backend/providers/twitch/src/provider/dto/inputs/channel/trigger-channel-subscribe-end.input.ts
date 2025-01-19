import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerChannelSubscribeEndInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "broadcaster id",
    description: "The ID of the broadcaster where the subscription ended.",
  })
  broadcaster_user_id: string;
}
