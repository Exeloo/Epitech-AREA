import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionUserGetProfileResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  emailAddress: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  messagesTotal: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  threadsTotal: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  historyId: string;
}
