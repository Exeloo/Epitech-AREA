import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class LabelColor {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  textColor: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  backgroundColor: string;
}

@ManifestType()
export class CreateLabelResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  messageListVisibility: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  labelListVisibility: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  type: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  messagesTotal: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  messagesUnread: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  threadsTotal: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  threadsUnread: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: LabelColor,
    optional: true,
  })
  color?: LabelColor;
}
