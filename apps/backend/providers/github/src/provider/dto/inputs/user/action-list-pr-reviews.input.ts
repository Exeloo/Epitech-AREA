import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionListPRReviewsInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  accept: string = "application/vnd.github+json";

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  owner: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  repo: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  pull_number: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  per_page?: number = 30;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  page?: number = 1;
}