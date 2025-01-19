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
    name: "User ID",
    description: "The ID of the user creating the label",
  })
  userId: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Name",
    description: "The label name",
  })
  name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "Message List Visibility",
    description: "The list of visible messages",
  })
  messageListVisibility?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "Label List Visibility",
    description: "The list of visible labels",
  })
  labelListVisibility?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: LabelColor,
    optional: true,
    name: "Color",
    description: "Label color",
  })
  color?: LabelColor;
}
