import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ChannelPointsCustomRewardAddConditionInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "broadcaster id",
    description: "The ID of the broadcaster where the custom reward was added",
  })
  broadcaster_user_id: string;
}
