import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionRenderMarkdownInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  text: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  mode?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  context?: string;
}
