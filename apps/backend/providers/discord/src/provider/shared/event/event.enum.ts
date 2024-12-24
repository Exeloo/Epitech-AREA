import { MessageNode } from "~/provider/dto/nodes/message.node";

export enum EventsEnum {
  MESSAGE_CREATE = "MESSAGE_CREATE",
}

export interface IEvents {
  [EventsEnum.MESSAGE_CREATE]: [message: MessageNode];
}
