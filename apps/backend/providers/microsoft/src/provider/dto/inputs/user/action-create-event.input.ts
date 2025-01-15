import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class EventBody {
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
export class EventDateTime {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  dateTime: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  timeZone: string;
}

@ManifestType()
export class EventLocation {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  displayName: string;
}

@ManifestType()
export class EmailAddress {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  address: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  name: string;
}

@ManifestType()
export class Attendee {
  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EmailAddress,
  })
  emailAddress: EmailAddress;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  type: string;
}

@ManifestType()
export class ActionCreateEventInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  subject: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventBody,
  })
  body: EventBody;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventDateTime,
  })
  start: EventDateTime;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventDateTime,
  })
  end: EventDateTime;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EventLocation,
  })
  location: EventLocation;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: Attendee,
    },
  })
  attendees: Array<Attendee>;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  allowNewTimeProposals: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  transactionId?: string;
}
