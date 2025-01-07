import { Global, Module } from "@nestjs/common";
import { EventEmitterModule } from "@nestjs/event-emitter";

import { eventOptions } from "~/config/event.config";

import { EventService } from "./event.service";

@Global()
@Module({
  imports: [EventEmitterModule.forRoot(eventOptions)],
  providers: [EventService],
  exports: [EventService],
})
export class EventModule {}
