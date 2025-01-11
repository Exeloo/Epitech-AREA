import {Body, Controller, Get, Post, UseGuards} from "@nestjs/common";

import {AuthGuard} from "@lib/auth";
import {IManifest} from "@lib/manifest";

import {ActionService} from "~/provider/services/action.service";

import {AppService} from "./app.service";

@UseGuards(AuthGuard)
@Controller("area")
export class AppController {
  constructor(
    private readonly appService: AppService,
    private readonly actionService: ActionService,
  ) {}

  @Get("manifest")
  manifest(): Promise<IManifest> {
    return this.appService.getManifest();
  }

  @Post("triggers")
  async registerTrigger() {
    return {
      message: "success",
    };
  }

  @Post("actions")
  async runAction(@Body() body: any) {
    const res = await this.actionService.onAction(
      body.name,
      body.data,
    );
    return {
      message: "success",
      data: res,
    };
  }
}
