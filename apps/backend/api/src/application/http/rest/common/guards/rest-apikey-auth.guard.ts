import { CanActivate, ExecutionContext, Injectable } from "@nestjs/common";

import { AuthorizationException } from "@exception";

@Injectable()
export class RestApikeyAuthGuard implements CanActivate {
  async canActivate(context: ExecutionContext): Promise<true | never> {
    const request = context.switchToHttp().getRequest();
    if (!request || !request["provider"]) {
      throw new AuthorizationException(
        "UNAUTHORIZED_MISSING_API_KEY",
        "Api Key required",
        {
          cause: new Error("Missing cannot fetch provider in request"),
          trace: 40,
        },
      );
    }
    return true;
  }
}
