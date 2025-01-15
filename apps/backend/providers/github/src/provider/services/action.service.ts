import { Injectable } from "@nestjs/common";

import { UserAction } from "~/provider/actions/user.action";
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

interface IActions {
  ["user-get-profile"]: {
    params: ActionUserGetProfileInput;
    response: ActionUserGetProfileResponse;
  };
  ["list-users"]: {
    params: ActionListUsersInput;
    response: ActionListUsersResponse;
  };
  ["list-team-repos"]: {
    params: ActionListTeamReposInput;
    response: ActionListTeamReposResponse;
  };
  ["get-project"]: {
    params: ActionGetProjectInput;
    response: ActionGetProjectResponse;
  };
  ["list-pr-reviews"]: {
    params: ActionListPRReviewsInput;
    response: ActionListPRReviewsResponse;
  };
  ["render-markdown"]: {
    params: ActionRenderMarkdownInput;
    response: ActionRenderMarkdownResponse;
  };
}

export type IActionResponse<R> = Promise<R>;

type IActionCallbacks = {
  [K in keyof IActions]: (
    userId: number,
    input: IActions[K]["params"],
  ) => IActionResponse<IActions[K]["response"]>;
};

@Injectable()
export class ActionService {
  private readonly actions: IActionCallbacks;

  constructor(userAction: UserAction) {
    this.actions = {
      "user-get-profile": (userId, input) =>
        userAction.userGetProfile(userId, input),
      "list-users": (userId, input) =>
        userAction.listUsersProfile(userId, input),
      "list-team-repos": (userId, input) =>
        userAction.listTeamRepos(userId, input),
      "get-project": (userId, input) => userAction.getProject(userId, input),
      "list-pr-reviews": (userId, input) =>
        userAction.listPRReviews(userId, input),
      "render-markdown": (userId, input) =>
        userAction.renderMarkdown(userId, input),
    };
  }

  async onAction<K extends keyof IActions>(
    name: K,
    userId: number,
    input: any,
  ): Promise<any> {
    return await this.actions[name](userId, input);
  }
}
