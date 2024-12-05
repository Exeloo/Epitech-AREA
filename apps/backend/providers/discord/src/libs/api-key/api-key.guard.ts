import {
  CanActivate,
  ExecutionContext,
  Injectable,
  UnauthorizedException,
} from "@nestjs/common";

import { ApiKeyService } from "./api-key.service";

@Injectable()
export class AuthApiKeyGuard implements CanActivate {
  constructor(private readonly apiKeyService: ApiKeyService) {}

  async canActivate(context: ExecutionContext): Promise<true | never> {
    const request = context.switchToHttp().getRequest();

    const apiKeyHeader = request.headers["api-key"];
    if (!apiKeyHeader || Array.isArray(apiKeyHeader)) {
      throw new UnauthorizedException();
    }

    const apiKey = await this.apiKeyService.validate(apiKeyHeader);
    if (!apiKey) {
      throw new UnauthorizedException();
    }
    return true;
  }
}
