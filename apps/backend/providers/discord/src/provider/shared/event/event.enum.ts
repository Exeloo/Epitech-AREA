import {MessageNode} from "~/provider/dto/nodes/message.node";
import {AddReactionMessageResponse} from "~/provider/dto/response/add-reaction-message.response";
import {DeleteMessageResponse} from "~/provider/dto/response/delete-message.response";
import {DeleteReactionMessageResponse} from "~/provider/dto/response/delete-reaction-message.response";

export enum EventsEnum {
  MESSAGE_CREATE = "MESSAGE_CREATE",
  MESSAGE_UPDATE = "MESSAGE_UPDATE",
  MESSAGE_DELETE = "MESSAGE_DELETE",
  MESSAGE_REACTION_ADD = "MESSAGE_REACTION_ADD",
  MESSAGE_REACTION_REMOVE = "MESSAGE_REACTION_REMOVE",
}

export interface IEvents {
  [EventsEnum.MESSAGE_CREATE]: [message: MessageNode];
  [EventsEnum.MESSAGE_UPDATE]: [message: MessageNode];
  [EventsEnum.MESSAGE_DELETE]: [response: DeleteMessageResponse];
  [EventsEnum.MESSAGE_REACTION_ADD]: [reaction: AddReactionMessageResponse];
  [EventsEnum.MESSAGE_REACTION_REMOVE]: [
    reaction: DeleteReactionMessageResponse,
  ];
}
