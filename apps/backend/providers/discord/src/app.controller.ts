import { Body, Controller, Get, Post } from "@nestjs/common";

import { AppService } from "./app.service";
import { registerAction } from "./common/manifest/functions/register-action";
import { registerTrigger } from "./common/manifest/functions/register-trigger";
import "./types";

registerTrigger("message", {
  id: "message",
  name: "onMessage",
  description: "onMessage",
  img: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ficonduck.com%2Ficons%2F183838%2Fmessage&psig=AOvVaw2RuOHawqYJPTsFED8jTc_O&ust=1733408359495000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCPCphr6njooDFQAAAAAdAAAAABAE",
  input: "message-listener-input",
  output: "message",
});

registerAction("message", {
  id: "message",
  name: "SendMessage",
  description: "SendMessage",
  img: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ficonduck.com%2Ficons%2F183838%2Fmessage&psig=AOvVaw2RuOHawqYJPTsFED8jTc_O&ust=1733408359495000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCPCphr6njooDFQAAAAAdAAAAABAE",
  input: "send-message-input",
  output: "message",
});

@Controller("area")
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get("manifest")
  manifest(): Promise<any> {
    return this.appService.getManifest();
  }

  @Post("triggers/:id")
  handleTrigger(/* @Param("id") id: string */ @Body() body: any) {
    this.appService.subscribe(body);
    return { message: "ok" };
  }

  @Post("actions/:id")
  handleAction(/* @Param("id") id: string */) {}
}
