import { ExecutionContext, createParamDecorator } from "@nestjs/common";

export const RestCurrentProvider = createParamDecorator(
  (_data: unknown, context: ExecutionContext) => {
    return context.switchToHttp().getRequest()["provider"];
  },
);
