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
    name: "user_id",
    description: "The user id",
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "displayName",
    description: "The display name of the notebook",
  })
  displayName: string;
}
