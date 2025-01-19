import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionGetProjectInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "User id",
    description: "The ID of the user to get the project for",
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    name: "Project id",
    description: "The ID of the project to get",
  })
  project_id: number;
}
