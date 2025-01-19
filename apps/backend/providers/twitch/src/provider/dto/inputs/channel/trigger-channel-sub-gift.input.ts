import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ChannelSubscriptionGiftInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "broadcaster id",
    description:
      "The ID of the broadcaster where the subscription gift was triggered",
  })
  broadcaster_user_id: string;
}
