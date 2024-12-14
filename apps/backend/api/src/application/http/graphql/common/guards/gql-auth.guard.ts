import { CanActivate, ExecutionContext, Injectable } from "@nestjs/common";
import { GqlExecutionContext } from "@nestjs/graphql";

@Injectable()
export class GqlAuthGuard implements CanActivate {
  async canActivate(context: ExecutionContext): Promise<true | never> {
    const request = GqlExecutionContext.create(context).getContext()
      .req as Request;
    if (!request || !request["user"]) {
      throw Error(); // @todo Error no authorized
    }
    return true;
  }
}
