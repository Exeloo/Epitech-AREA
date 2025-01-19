import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class SendMessageInputMessage {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  raw: string;
}

@ManifestType()
export class SendMessageInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "User ID",
    description: "The ID of the user to whom the message is addressed",
  })
  userId: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: SendMessageInputMessage,
    name: "Message",
    description: "The content of the message sent to the user",
  })
  message: SendMessageInputMessage;
}
