import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

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
export class ActionCreateEventResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  subject: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  bodyPreview: string;

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
    type: ManifestPropertyEnum.STRING,
  })
  webLink: string;
}
