import {
  CanActivate,
  ExecutionContext,
  HttpException,
  HttpStatus,
  Injectable,
} from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

@Injectable()
export class AuthGuard implements CanActivate {
  constructor(private readonly configService: ConfigService) {}

  async canActivate(context: ExecutionContext): Promise<true | never> {
    const request = context.switchToHttp().getRequest();
    if (!request || !request.headers || !request.headers["api-key"]) {
      throw new HttpException("Missing Api Key", HttpStatus.UNAUTHORIZED);
    }
    if (
      request.headers["api-key"] != this.configService.getOrThrow("API_KEY")
    ) {
      throw new HttpException("Bad Api Key", HttpStatus.UNAUTHORIZED);
    }
    return true;
  }
}
