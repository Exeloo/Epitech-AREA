import { Injectable, NestMiddleware } from "@nestjs/common";
import { NextFunction, Request, Response } from "express";

import { StrategyEnum } from "@domain/auth/strategy/strategy.enum";

import { AuthService } from "~/shared/auth/auth.service";

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
      request["user"] = await this.authService.authenticate(
        StrategyEnum.TOKEN,
        {
          token: request.headers.authorization,
        },
      );
    }
    // @todo Put here the apiKey auth
    next();
  }
}
