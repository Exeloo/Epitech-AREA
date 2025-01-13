import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionGetProjectInput } from "~/provider/dto/inputs/user/action-get-project.input";
import { ActionListPRReviewsInput } from "~/provider/dto/inputs/user/action-list-pr-reviews.input";
import { ActionListTeamReposInput } from "~/provider/dto/inputs/user/action-list-team-repos.input";
import { ActionListUsersInput } from "~/provider/dto/inputs/user/action-list-users.input";
import { ActionRenderMarkdownInput } from "~/provider/dto/inputs/user/action-render-markdown.input";
import { ActionUserGetProfileInput } from "~/provider/dto/inputs/user/action-user-get-profile.input";
import { ActionGetProjectResponse } from "~/provider/dto/responses/user/action-get-project.response";
import { ActionListPRReviewsResponse } from "~/provider/dto/responses/user/action-list-pr-reviews.response";
import { ActionListTeamReposResponse } from "~/provider/dto/responses/user/action-list-team-repos.response";
import { ActionListUsersResponse } from "~/provider/dto/responses/user/action-list-users.response";
import { ActionRenderMarkdownResponse } from "~/provider/dto/responses/user/action-render-markdown.response";
import { ActionUserGetProfileResponse } from "~/provider/dto/responses/user/action-user-get-profile.response";
import { IActionResponse } from "~/provider/services/action.service";
import { AuthService } from "~/provider/shared/auth/auth.service";

@Injectable()
export class UserAction extends BaseHttpRepository {
  constructor(
    httpService: HttpService,
    configService: ConfigService,
    private readonly authService: AuthService,
  ) {
    super(httpService, configService);
  }

  @ManifestAction({
    id: "user-get-profile",
    name: "User Get Profile",
    description: "Action to Get Profile of user",
    img: "",
    color: "#ffffff",
    input: ActionUserGetProfileInput,
    output: ActionUserGetProfileResponse,
  })
  async userGetProfile(
    userId: number,
    input: ActionUserGetProfileInput,
  ): IActionResponse<ActionUserGetProfileResponse> {
    return this.get(`/user`, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }

  @ManifestAction({
    id: "list-users",
    name: "List Users",
    description: "Action to List Users",
    img: "",
    color: "#ffffff",
    input: ActionListUsersInput,
    output: ActionListUsersResponse,
  })
  async listUsersProfile(
    userId: number,
    input: ActionListUsersInput,
  ): IActionResponse<ActionListUsersResponse> {
    return this.get(`/users`, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }

  @ManifestAction({
    id: "list-team-repos",
    name: "List Team Repos",
    description: "Action to List Team Repos",
    img: "",
    color: "#ffffff",
    input: ActionListTeamReposInput,
    output: ActionListTeamReposResponse,
  })
  async listTeamRepos(
    userId: number,
    input: ActionListTeamReposInput,
  ): IActionResponse<ActionListTeamReposResponse> {
    return this.get(`/orgs/${input.org}/teams/${input.team_slug}/repos`, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }

  @ManifestAction({
    id: "get-project",
    name: "Get Project",
    description: "Action to Get Project",
    img: "",
    color: "#ffffff",
    input: ActionGetProjectInput,
    output: ActionGetProjectResponse,
  })
  async getProject(
    userId: number,
    input: ActionGetProjectInput,
  ): IActionResponse<ActionGetProjectResponse> {
    return this.get(`/projects/${input.project_id}`, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }

  @ManifestAction({
    id: "list-pr-reviews",
    name: "List PR Reviews",
    description: "Action to List PR Reviews",
    img: "",
    color: "#ffffff",
    input: ActionListPRReviewsInput,
    output: ActionListPRReviewsResponse,
  })
  async listPRReviews(
    userId: number,
    input: ActionListPRReviewsInput,
  ): IActionResponse<ActionListPRReviewsResponse> {
    return this.get(
      `/repos/${input.owner}/${input.repo}/pulls/${input.pull_number}/reviews`,
      {
        headers: {
          Authorization: await this.authService.getToken(userId, input.user_id),
        },
      },
    );
  }

  @ManifestAction({
    id: "render-markdown",
    name: "Render Markdown",
    description: "Action to Render Markdown",
    img: "",
    color: "#ffffff",
    input: ActionRenderMarkdownInput,
    output: ActionRenderMarkdownResponse,
  })
  async renderMarkdown(
    userId: number,
    input: ActionRenderMarkdownInput,
  ): IActionResponse<ActionRenderMarkdownResponse> {
    return this.post(`/markdown`, input, {
      headers: {
        Authorization: await this.authService.getToken(userId, input.user_id),
      },
    });
  }
}
