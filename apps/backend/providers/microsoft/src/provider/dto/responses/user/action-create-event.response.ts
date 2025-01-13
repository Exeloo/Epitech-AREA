import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

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
    type: ManifestPropertyEnum.STRING,
  })
  start: {
    dateTime: string;
    timeZone: string;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  end: {
    dateTime: string;
    timeZone: string;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
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
  })
  attendees: Array<{
    emailAddress: {
      address: string;
      name: string;
    };
    type: string;
  }>;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  webLink: string;
}