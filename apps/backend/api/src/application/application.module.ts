import { Module } from "@nestjs/common";

import { WebsocketModule } from "~/application/ws/websocket.module";

import { HTTPModule } from "./http/http.module";

@Module({
  imports: [HTTPModule, WebsocketModule],
})
export class ApplicationModule {}
