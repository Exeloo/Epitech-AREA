import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionCreateNotebookInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  displayName: string;
}
