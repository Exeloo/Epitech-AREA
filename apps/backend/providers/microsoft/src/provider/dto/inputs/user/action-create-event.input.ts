import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class EventBody {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "contentType",
    description: "The content type of the event body",
  })
  contentType: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "content",
    description: "The content of the event body",
  })
  content: string;
}

@ManifestType()
export class EventDateTime {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "dateTime",
    description: "The date and time of the event",
  })
  dateTime: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "timeZone",
    description: "The time zone of the event",
  })
  timeZone: string;
}

@ManifestType()
export class EventLocation {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "displayName",
    description: "The display name of the event location",
  })
  displayName: string;
}

@ManifestType()
export class EmailAddress {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "address",
    description: "The email address",
  })
  address: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "name",
    description: "The name of the email address",
  })
  name: string;
}

@ManifestType()
export class Attendee {
  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EmailAddress,
    name: "emailAddress",
    description: "The email address of the attendee",
  })
  emailAddress: EmailAddress;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "type",
    description: "The type of the attendee",
  })
  type: string;
}

@ManifestType()
export class ActionCreateEventInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "user_id",
    description: "The user id",
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "subject",
    description: "The subject of the event",
  })
  subject: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventBody,
    name: "body",
    description: "The body of the event",
  })
  body: EventBody;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventDateTime,
    name: "start",
    description: "The start date and time of the event",
  })
  start: EventDateTime;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventDateTime,
    name: "end",
    description: "The end date and time of the event",
  })
  end: EventDateTime;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventLocation,
    name: "location",
    description: "The location of the event",
  })
  location: EventLocation;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: Attendee,
    },
    name: "attendees",
    description: "The attendees of the event",
  })
  attendees: Array<Attendee>;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
    name: "allowNewTimeProposals",
    description: "Whether to allow new time proposals",
  })
  allowNewTimeProposals: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "transactionId",
    description: "The transaction id",
  })
  transactionId?: string;
}
