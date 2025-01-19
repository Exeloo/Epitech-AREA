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
    name: "User ID",
    description: "The ID of the user creating the draft",
  })
  userId: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: CreateDraftInputMessage,
    name: "Message",
    description: "Message content in the draft",
  })
  message: CreateDraftInputMessage;
}
