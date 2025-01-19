import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerChannelRaidInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "from broadcaster id",
    description: "The ID of the broadcaster who initiated the raid.",
  })
  from_broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "to broadcaster id",
    description: "The ID of the broadcaster who received the raid.",
  })
  to_broadcaster_user_id: string;
}
