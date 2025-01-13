import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionCreateNotebookInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  accept: string = "application/json";

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  displayName: string;
}