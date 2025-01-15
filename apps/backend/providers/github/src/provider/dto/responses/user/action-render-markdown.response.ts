import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionRenderMarkdownResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  rendered_html: string;
}
