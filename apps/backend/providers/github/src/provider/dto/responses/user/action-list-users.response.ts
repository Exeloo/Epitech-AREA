import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionListUsersResponse {
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
  gravatar_id: string | null;

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
    type: ManifestPropertyEnum.BOOLEAN,
  })
  site_admin: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  name: string | null;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  email: string | null;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  starred_at: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_view_type: string;
}
