import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class EmailAddress {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  address: string;
}

@ManifestType()
export class Recipient {
  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EmailAddress,
  })
  emailAddress: EmailAddress;
}

@ManifestType()
export class MessageBody {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  contentType: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  content: string;
}

@ManifestType()
export class Message {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  subject: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: MessageBody,
  })
  body: MessageBody;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: Recipient,
    },
  })
  toRecipients: Array<Recipient>;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: Recipient,
    },
    optional: true,
  })
  ccRecipients?: Array<Recipient>;
}

@ManifestType()
export class ActionSendMailInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: Message,
  })
  message: Message;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
    optional: true,
  })
  saveToSentItems?: boolean;
}
