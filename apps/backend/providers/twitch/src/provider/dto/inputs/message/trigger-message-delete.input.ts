import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerMessageDeleteInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "broadcaster_id",
    description: "The ID of the broadcaster where the message was deleted",
  })
  broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "user_id",
    description: "The ID of the user who deleted the message",
  })
  user_id: string;
}
