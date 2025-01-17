import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerChannelSubscribeInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "broadcaster_id",
    description:
      "The ID of the broadcaster where the subscription was triggered.",
  })
  broadcaster_user_id: string;
}
