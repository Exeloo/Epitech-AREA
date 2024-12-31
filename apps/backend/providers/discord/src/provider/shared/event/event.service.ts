import { Injectable } from "@nestjs/common";
import { EventEmitter2 } from "@nestjs/event-emitter";

import { IEvents } from "./event.enum";

@Injectable()
export class EventService {
  constructor(private readonly eventEmitter: EventEmitter2) {}

  emit<K extends keyof IEvents>(event: K, args: IEvents[K]): boolean {
    return this.eventEmitter.emit(event, ...args);
  }
}
