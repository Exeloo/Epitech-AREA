import { CanActivate, ExecutionContext, Injectable } from "@nestjs/common";
import { GqlExecutionContext } from "@nestjs/graphql";

import { AuthorizationException } from "@exception";

@Injectable()
export class GqlAuthGuard implements CanActivate {
  async canActivate(context: ExecutionContext): Promise<true | never> {
    const request = GqlExecutionContext.create(context).getContext()
      .req as Request;
    if (!request || !request["user"]) {
      throw new AuthorizationException(
        "UNAUTHORIZED_MISSING_TOKEN",
        "Token required",
        {
          cause: new Error("Missing cannot fetch user in request"),
          trace: 5,
        },
      );
    }
    return true;
  }
}
