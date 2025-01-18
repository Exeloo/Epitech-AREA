import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class EmailAddress {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "address",
    description: "The email address",
  })
  address: string;
}

@ManifestType()
export class Recipient {
  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EmailAddress,
    name: "emailAddress",
    description: "The email address of the recipient",
  })
  emailAddress: EmailAddress;
}

@ManifestType()
export class MessageBody {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "contentType",
    description: "The content type",
  })
  contentType: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "content",
    description: "The content of the message body",
  })
  content: string;
}

@ManifestType()
export class Message {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "subject",
    description: "The subject of the message",
  })
  subject: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: MessageBody,
    name: "body",
    description: "The body of the message body",
  })
  body: MessageBody;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: Recipient,
    },
    name: "toRecipients",
    description: "The recipients of the message",
  })
  toRecipients: Array<Recipient>;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: Recipient,
    },
    optional: true,
    name: "ccRecipients",
    description: "The cc recipients of the message",
  })
  ccRecipients?: Array<Recipient>;
}

@ManifestType()
export class ActionSendMailInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "user_id",
    description: "The user id",
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: Message,
    name: "message",
    description: "The message to send",
  })
  message: Message;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
    optional: true,
    name: "saveToSentItems",
    description: "Whether to save the message to the sent items",
  })
  saveToSentItems?: boolean;
}
