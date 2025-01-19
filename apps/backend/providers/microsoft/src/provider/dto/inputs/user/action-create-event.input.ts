import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class EventBody {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Content Type",
    description: "The content type of the event body",
  })
  contentType: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Content",
    description: "The content of the event body",
  })
  content: string;
}

@ManifestType()
export class EventDateTime {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Date Time",
    description: "The date and time of the event",
  })
  dateTime: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Time Zone",
    description: "The time zone of the event",
  })
  timeZone: string;
}

@ManifestType()
export class EventLocation {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Display Name",
    description: "The display name of the event location",
  })
  displayName: string;
}

@ManifestType()
export class EmailAddress {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Address",
    description: "The email address",
  })
  address: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Email Address Name",
    description: "The name of the email address",
  })
  name: string;
}

@ManifestType()
export class Attendee {
  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EmailAddress,
    name: "Email Address",
    description: "The email address of the attendee",
  })
  emailAddress: EmailAddress;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Type",
    description: "The type of the attendee",
  })
  type: string;
}

@ManifestType()
export class ActionCreateEventInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "User Id",
    description: "The user id",
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Subject",
    description: "The subject of the event",
  })
  subject: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventBody,
    name: "Body",
    description: "The body of the event",
  })
  body: EventBody;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventDateTime,
    name: "Start",
    description: "The start date and time of the event",
  })
  start: EventDateTime;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventDateTime,
    name: "End",
    description: "The end date and time of the event",
  })
  end: EventDateTime;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventLocation,
    name: "Location",
    description: "The location of the event",
  })
  location: EventLocation;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: Attendee,
    },
    name: "Attendees",
    description: "The attendees of the event",
  })
  attendees: Array<Attendee>;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
    name: "Allow New Time Proposals",
    description: "Whether to allow new time proposals",
  })
  allowNewTimeProposals: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "Transaction Id",
    description: "The transaction id",
  })
  transactionId?: string;
}
