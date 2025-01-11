import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

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
    properties: {
      login: { type: ManifestPropertyEnum.STRING },
      id: { type: ManifestPropertyEnum.NUMBER },
      node_id: { type: ManifestPropertyEnum.STRING },
      avatar_url: { type: ManifestPropertyEnum.STRING },
      gravatar_id: { type: ManifestPropertyEnum.STRING },
      url: { type: ManifestPropertyEnum.STRING },
      html_url: { type: ManifestPropertyEnum.STRING },
      followers_url: { type: ManifestPropertyEnum.STRING },
      following_url: { type: ManifestPropertyEnum.STRING },
      gists_url: { type: ManifestPropertyEnum.STRING },
      starred_url: { type: ManifestPropertyEnum.STRING },
      subscriptions_url: { type: ManifestPropertyEnum.STRING },
      organizations_url: { type: ManifestPropertyEnum.STRING },
      repos_url: { type: ManifestPropertyEnum.STRING },
      events_url: { type: ManifestPropertyEnum.STRING },
      received_events_url: { type: ManifestPropertyEnum.STRING },
      type: { type: ManifestPropertyEnum.STRING },
      site_admin: { type: ManifestPropertyEnum.BOOLEAN },
    },
  })
  user: {
    login: string;
    id: number;
    node_id: string;
    avatar_url: string;
    gravatar_id: string;
    url: string;
    html_url: string;
    followers_url: string;
    following_url: string;
    gists_url: string;
    starred_url: string;
    subscriptions_url: string;
    organizations_url: string;
    repos_url: string;
    events_url: string;
    received_events_url: string;
    type: string;
    site_admin: boolean;
  };

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
    properties: {
      html: {
        type: ManifestPropertyEnum.OBJECT,
        properties: {
          href: { type: ManifestPropertyEnum.STRING },
        },
      },
      pull_request: {
        type: ManifestPropertyEnum.OBJECT,
        properties: {
          href: { type: ManifestPropertyEnum.STRING },
        },
      },
    },
  })
  _links: {
    html: {
      href: string;
    };
    pull_request: {
      href: string;
    };
  };

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