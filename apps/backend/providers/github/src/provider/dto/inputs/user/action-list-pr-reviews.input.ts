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
  })
  user_id?: string;

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
    optional: true,
  })
  per_page?: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    optional: true,
  })
  page?: number;
}
