import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionRenderMarkdownInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  text: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  mode?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  context?: string;
}
