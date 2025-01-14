import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionGetProjectInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  project_id: number;
}
