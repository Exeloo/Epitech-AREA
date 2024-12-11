import { Controller, Get, Render, Request, Type } from "@nestjs/common";
import Express from "express";

import { AuthService } from "@domain/auth/auth.service";
import { OAuthStrategyEnum } from "@domain/auth/strategy/strategies/oauth/oauth.strategy.enum";

import { IAuthController } from "./auth.controller.type";

export const BaseAuthController = (
  provider: OAuthStrategyEnum,
): Type<IAuthController> => {
  @Controller(`auth/${provider}`)
  class AuthController implements IAuthController {
    constructor(private readonly authService: AuthService) {}

    @Get()
    @Render("auth.hbs")
    auth() {
      return this.authService.getOAuthRedirect(provider);
    }

    @Get("callback")
    @Render("auth.hbs")
    callback(@Request() req: Express.Request) {
      return this.authService.authOAuthRedirect(provider, req);
    }
  }
  return AuthController;
};
