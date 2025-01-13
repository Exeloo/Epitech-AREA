import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionCreateEventInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  accept: string = "application/vnd.github+json";

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  subject: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
  })
  body: {
    contentType: string;
    content: string;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
  })
  start: {
    dateTime: string;
    timeZone: string;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
  })
  end: {
    dateTime: string;
    timeZone: string;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
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
          address: string,
          name: string,
        },
        type: ManifestPropertyEnum.STRING,
      },
    },
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
  })
  allowNewTimeProposals: boolean = true;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  transactionId?: string;
}
