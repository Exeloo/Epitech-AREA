import { TriggerMessageResponse } from "~/provider/dto/responses/trigger-message.response";

export enum EventsEnum {
  Channel_Chat_Message = "channel.chat.message",
  Channel_Chat_Message_Delete = "channel.chat.message_delete",
}

export interface IEvents {
  [EventsEnum.Channel_Chat_Message]: [message: TriggerMessageResponse];
}
