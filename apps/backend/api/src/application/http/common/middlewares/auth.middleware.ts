import { Injectable, NestMiddleware } from "@nestjs/common";
import { NextFunction, Request, Response } from "express";

import { AuthService } from "@domain/auth/auth.service";

@Injectable()
export class AuthMiddleware implements NestMiddleware {
  constructor(private readonly authService: AuthService) {}

  async use(
    request: Request,
    _response: Response,
    next: NextFunction,
  ): Promise<void> {
    if (!request.headers) next();
    if (request.headers.authorization) {
      request["user"] = await this.authService.authToken(
        request.headers.authorization,
      );
    }
    if (request.headers["api-key"]) {
      request["provider"] = await this.authService.authApiKey(
        request.headers["api-key"] as string,
      );
    }
    next();
  }
}
