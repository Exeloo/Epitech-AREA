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
    name: "user id",
    description: "The ID of the user to render the markdown for",
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "text",
    description: "The markdown text to render",
  })
  text: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "mode",
    description: "The mode to render the markdown in",
  })
  mode?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "context",
    description: "The context to render the markdown in",
  })
  context?: string;
}
