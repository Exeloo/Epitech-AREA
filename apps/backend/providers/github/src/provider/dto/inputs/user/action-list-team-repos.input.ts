import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionListTeamReposInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "user id",
    description: "The ID of the user to list the team repos for",
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "organization",
    description: "The organization the team belongs to",
  })
  org: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "team slug",
    description: "The slug of the team to list the repos for",
  })
  team_slug: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    optional: true,
    name: "item per page",
    description: "The number of items to return per page",
  })
  per_page?: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    optional: true,
    name: "page number",
    description: "The page number to return",
  })
  page?: number;
}
