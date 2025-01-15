import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class Creator {
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
    type: ManifestPropertyEnum.BOOLEAN,
  })
  site_admin: boolean;
}

@ManifestType()
export class ActionGetProjectResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  owner_url: string;

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
  columns_url: string;

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
  name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  body: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  number: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  state: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: Creator,
  })
  creator: Creator;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  created_at: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  updated_at: string;
}
