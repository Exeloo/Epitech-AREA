import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionListTeamReposResponse {
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
  full_name: string;

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
  owner: {
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
    type: ManifestPropertyEnum.BOOLEAN,
  })
  private: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  html_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  description: string | null;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  fork: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  archive_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  assignees_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  blobs_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  branches_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  collaborators_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  comments_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  commits_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  compare_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  contents_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  contributors_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  deployments_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  downloads_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  events_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  forks_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  git_commits_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  git_refs_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  git_tags_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  git_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  issue_comment_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  issue_events_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  issues_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  keys_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  labels_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  languages_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  merges_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  milestones_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  notifications_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  pulls_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  releases_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  ssh_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  stargazers_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  statuses_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  subscribers_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  subscription_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  tags_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  teams_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  trees_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  clone_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  mirror_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  hooks_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  svn_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  homepage: string | null;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  forks_count: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  stargazers_count: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  watchers_count: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  size: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  default_branch: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  open_issues_count: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_template: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: { type: ManifestPropertyEnum.STRING },
  })
  topics: string[];

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  has_issues: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  has_projects: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  has_wiki: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  has_pages: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  has_downloads: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  has_discussions: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  archived: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  disabled: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  visibility: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  pushed_at: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  created_at: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  updated_at: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: {
      admin: { type: ManifestPropertyEnum.BOOLEAN },
      push: { type: ManifestPropertyEnum.BOOLEAN },
      pull: { type: ManifestPropertyEnum.BOOLEAN },
    },
  })
  permissions: {
    admin: boolean;
    push: boolean;
    pull: boolean;
  };

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: {
      advanced_security: {
        type: ManifestPropertyEnum.OBJECT,
        properties: {
          status: { type: ManifestPropertyEnum.STRING },
        },
      },
      secret_scanning: {
        type: ManifestPropertyEnum.OBJECT,
        properties: {
          status: { type: ManifestPropertyEnum.STRING },
        },
      },
      secret_scanning_push_protection: {
        type: ManifestPropertyEnum.OBJECT,
        properties: {
          status: { type: ManifestPropertyEnum.STRING },
        },
      },
      secret_scanning_non_provider_patterns: {
        type: ManifestPropertyEnum.OBJECT,
        properties: {
          status: { type: ManifestPropertyEnum.STRING },
        },
      },
    },
  })
  security_and_analysis: {
    advanced_security: {
      status: string;
    };
    secret_scanning: {
      status: string;
    };
    secret_scanning_push_protection: {
      status: string;
    };
    secret_scanning_non_provider_patterns: {
      status: string;
    };
  };
}