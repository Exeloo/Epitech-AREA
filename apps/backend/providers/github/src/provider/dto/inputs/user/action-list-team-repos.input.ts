import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionListTeamReposInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_id: string;

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
  })
  per_page?: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  page?: number;
}
