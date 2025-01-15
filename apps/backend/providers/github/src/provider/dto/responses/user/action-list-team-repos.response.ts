import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class Owner {
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
export class Permissions {
  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  admin: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  push: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  pull: boolean;
}

@ManifestType()
export class Status {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  status: string;
}

@ManifestType()
export class SecurityAnalysis {
  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: Status,
  })
  advanced_security: Status;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: Status,
  })
  secret_scanning: Status;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: Status,
  })
  secret_scanning_push_protection: Status;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: Status,
  })
  secret_scanning_non_provider_patterns: Status;
}

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
    properties: Owner,
  })
  owner: Owner;

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
    optional: true,
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
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_template: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.STRING,
    },
  })
  topics: string[];

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: Permissions,
  })
  permissions: Permissions;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: SecurityAnalysis,
  })
  security_and_analysis: SecurityAnalysis;
}
