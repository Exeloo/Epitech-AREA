import { Body, Controller, Get, Param, Post, UseGuards } from "@nestjs/common";

import { AuthGuard } from "@lib/auth";
import { IManifest } from "@lib/manifest";

import { ActionService } from "~/provider/services/action.service";
import { TriggerService } from "~/provider/services/trigger.service";

import { AppService } from "./app.service";

@UseGuards(AuthGuard)
@Controller("area")
export class AppController {
  constructor(
    private readonly appService: AppService,
    private readonly actionService: ActionService,
    private readonly triggerService: TriggerService,
  ) {}

  @Get("manifest")
  manifest(): Promise<IManifest> {
    return this.appService.getManifest();
  }

  @Post("triggers")
  async registerTrigger(@Body() body: any) {
    await this.triggerService.registerTrigger(body);
    return {
      message: "success",
    };
  }

  @Post("actions")
  async runAction(@Body() body: any) {
    const res = await this.actionService.onAction(
      body.name,
      body.userId,
      body.data,
    );
    return {
      message: "success",
      data: res,
    };
  }

  @Get("oauth/:id")
  getOAuth(@Param("id") id: string): Promise<{ baseUrl: string }> {
    return this.appService.getOAuthUrl({ userId: +id });
  }

  @Post("oauth") async runOAuth(
    @Body() body: { code: string; state: string },
  ): Promise<{ message: string }> {
    await this.appService.runOAuth(body);
    return { message: "success" };
  }
}
