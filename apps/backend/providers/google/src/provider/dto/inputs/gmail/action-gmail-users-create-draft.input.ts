import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class CreateDraftInputMessage {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  raw: string;
}

@ManifestType()
export class CreateDraftInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  userId: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: CreateDraftInputMessage,
  })
  message: CreateDraftInputMessage;
}
