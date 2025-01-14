import { Body, Controller, Get, Post, UseGuards } from "@nestjs/common";

import { AuthGuard } from "@lib/auth";
import { IManifest } from "@lib/manifest";

import { TriggerService } from "~/provider/services/trigger.service";

import { AppService } from "./app.service";

@UseGuards(AuthGuard)
@Controller("area")
export class AppController {
  constructor(
    private readonly appService: AppService,
    private readonly triggerService: TriggerService,
  ) {}

  @Get("manifest")
  manifest(): Promise<IManifest> {
    return this.appService.getManifest();
  }

  @Post("triggers")
  registerTrigger(@Body() body: any) {
    this.triggerService.registerTrigger(body);
    return {
      message: "success",
    };
  }
}
