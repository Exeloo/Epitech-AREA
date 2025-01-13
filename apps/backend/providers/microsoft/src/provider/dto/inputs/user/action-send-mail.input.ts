import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionSendMailInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  accept: string = "application/json";

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
  })
  message: {
    subject: string;
    body: {
      contentType: string;
      content: string;
    };
    toRecipients: Array<{
      emailAddress: {
        address: string;
      };
    }>;
    ccRecipients?: Array<{
      emailAddress: {
        address: string;
      };
    }>;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  saveToSentItems?: boolean = true;
}
