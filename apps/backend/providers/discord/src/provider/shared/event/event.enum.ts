import { MessageNode } from "~/provider/dto/nodes/message.node";
import { EmptyResponse } from "~/provider/dto/response/empty.response";

export enum EventsEnum {
  MESSAGE_CREATE = "MESSAGE_CREATE",
  MESSAGE_UPDATE = "MESSAGE_UPDATE",
  MESSAGE_DELETE = "MESSAGE_DELETE",
}

export interface IEvents {
  [EventsEnum.MESSAGE_CREATE]: [message: MessageNode];
  [EventsEnum.MESSAGE_UPDATE]: [message: MessageNode];
  [EventsEnum.MESSAGE_DELETE]: [response: EmptyResponse];
}
