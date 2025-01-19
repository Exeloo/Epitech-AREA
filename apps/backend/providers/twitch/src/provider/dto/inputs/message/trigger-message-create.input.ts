import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerMessageCreateInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "broadcaster id",
    description: "The ID of the broadcaster where the message was created",
  })
  broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "user id",
    description: "The ID of the user who created the message",
  })
  user_id: string;
}
