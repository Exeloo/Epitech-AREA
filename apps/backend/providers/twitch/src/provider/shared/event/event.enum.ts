import { ActionMessageResponse } from "~/provider/dto/responses/action-message.response";

export enum EventsEnum {
  Channel_Chat_Message = "channel.chat.message",
}

export interface IEvents {
  [EventsEnum.Channel_Chat_Message]: [message: ActionMessageResponse];
}
