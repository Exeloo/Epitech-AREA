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
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  org: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  team_slug: string;

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
