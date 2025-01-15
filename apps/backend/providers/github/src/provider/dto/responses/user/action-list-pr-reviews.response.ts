import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class User {
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
export class Links {
  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: {
      href: { type: ManifestPropertyEnum.STRING },
    },
  })
  html: {
    href: string;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: {
      href: { type: ManifestPropertyEnum.STRING },
    },
  })
  pull_request: {
    href: string;
  };
}

@ManifestType()
export class ActionListPRReviewsResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  id: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  node_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: User,
  })
  user: User;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  body: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  state: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  html_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  pull_request_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: Links,
  })
  _links: Links;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  submitted_at: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  commit_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  author_association: string;
}
