import { MessageNode } from "~/provider/dto/nodes/message.node";

export enum EventsEnum {
  MESSAGE_CREATE = "MESSAGE_CREATE",
  MESSAGE_UPDATE = "MESSAGE_UPDATE",
}

export interface IEvents {
  [EventsEnum.MESSAGE_CREATE]: [message: MessageNode];
  [EventsEnum.MESSAGE_UPDATE]: [message: MessageNode];
}
