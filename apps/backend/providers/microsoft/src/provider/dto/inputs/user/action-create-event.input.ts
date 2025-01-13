import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionCreateEventInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    description: "Setting to application/vnd.github+json is recommended.",
  })
  accept: string = "application/vnd.github+json";

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    description: "The subject of the event.",
  })
  subject: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    description: "The body of the event.",
  })
  body: {
    contentType: string;
    content: string;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    description: "The start time of the event.",
  })
  start: {
    dateTime: string;
    timeZone: string;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    description: "The end time of the event.",
  })
  end: {
    dateTime: string;
    timeZone: string;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    description: "The location of the event.",
  })
  location: {
    displayName: string;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: {
        emailAddress: {
          address: string;
          name: string;
        },
        type: string;
      },
    },
    description: "The attendees of the event.",
  })
  attendees: Array<{
    emailAddress: {
      address: string;
      name: string;
    };
    type: string;
  }>;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
    description: "Allow new time proposals.",
  })
  allowNewTimeProposals: boolean = true;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    description: "The transaction ID for the event.",
  })
  transactionId?: string;
}