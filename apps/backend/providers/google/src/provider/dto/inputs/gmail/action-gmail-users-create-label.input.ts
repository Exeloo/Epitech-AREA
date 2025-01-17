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
export class CreateLabelInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  userId: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  messageListVisibility?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  labelListVisibility?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: LabelColor,
    optional: true,
  })
  color?: LabelColor;
}
