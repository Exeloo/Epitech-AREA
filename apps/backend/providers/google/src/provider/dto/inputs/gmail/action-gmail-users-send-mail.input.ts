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
  })
  userId: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: SendMessageInputMessage,
  })
  message: SendMessageInputMessage;
}
