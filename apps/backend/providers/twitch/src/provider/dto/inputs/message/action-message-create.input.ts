import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionMessageCreateInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "broadcaster_id",
    description: "The ID of the broadcaster where the message was sent",
  })
  broadcaster_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "sender_id",
    description: "The ID of the sender of the message",
  })
  sender_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "message",
    description: "The message to send",
  })
  message: string;
}
