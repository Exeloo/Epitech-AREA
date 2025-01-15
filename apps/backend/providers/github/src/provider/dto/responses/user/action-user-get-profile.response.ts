import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionUserGetProfileResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  id: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  node_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  avatar_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  gravatar_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  html_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  followers_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  following_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  gists_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  starred_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  subscriptions_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  organizations_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  repos_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  events_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  received_events_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  type: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_view_type: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  site_admin: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  email: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  public_repos: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  public_gists: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  followers: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  following: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  created_at: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  updated_at: string;
}
