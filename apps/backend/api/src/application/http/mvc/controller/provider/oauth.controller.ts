import { Controller, Get, Param, Render, Request } from "@nestjs/common";
import Express from "express";

import { ProviderService } from "@domain/provider/provider.service";

@Controller("area/oauth/:id")
export class ProviderAuthController {
  constructor(private readonly providerService: ProviderService) {}

  @Get()
  @Render("auth.hbs")
  auth(@Param("id") id: string, @Request() req: Express.Request) {
    return this.providerService.getOAuthRedirect(id, req);
  }

  @Get("callback")
  @Render("auth.hbs")
  callback(@Param("id") id: string, @Request() req: Express.Request) {
    return this.providerService.oAuthCallback(id, req);
  }
}
