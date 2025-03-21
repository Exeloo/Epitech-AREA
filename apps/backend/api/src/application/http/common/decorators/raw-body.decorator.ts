import { ExecutionContext, createParamDecorator } from "@nestjs/common";

export const RawBody = createParamDecorator(
  (data: unknown, ctx: ExecutionContext) => {
    const request = ctx.switchToHttp().getRequest();

    return request.rawBody;
  },
);
