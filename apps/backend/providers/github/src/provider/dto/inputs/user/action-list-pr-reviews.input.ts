import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionListPRReviewsInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "user_id",
    description: "The ID of the user to get the project for",
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "owner",
    description: "The owner of the repository",
  })
  owner: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "repo",
    description: "The name of the repository",
  })
  repo: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    name: "pull_number",
    description: "The number of the pull request",
  })
  pull_number: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    optional: true,
    name: "per_page",
    description: "The number of items to return per page",
  })
  per_page?: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    optional: true,
    name: "page",
    description: "The page number to return",
  })
  page?: number;
}
