import { Injectable } from "@nestjs/common";

import { MessageAction } from "~/provider/actions/message.action";
import { ActionMessageCreateInput } from "~/provider/dto/inputs/message/action-message-create.input";
import { ActionMessageDeleteInput } from "~/provider/dto/inputs/message/action-message-delete.input";
import { ActionMessageOwnReactionInput } from "~/provider/dto/inputs/message/action-message-own-reaction.input";
import { ActionMessageUpdateInput } from "~/provider/dto/inputs/message/action-message-update.input";
import { MessageNode } from "~/provider/dto/nodes/message.node";
import { EmptyResponse } from "~/provider/dto/response/empty.response";

interface IActions {
  ["message-create"]: (input: ActionMessageCreateInput) => Promise<MessageNode>;
  ["message-update"]: (input: ActionMessageUpdateInput) => Promise<MessageNode>;
  ["message-delete"]: (
    input: ActionMessageDeleteInput,
  ) => Promise<EmptyResponse>;
  ["message-reaction-add"]: (
    input: ActionMessageOwnReactionInput,
  ) => Promise<EmptyResponse>;
  ["message-reaction-delete"]: (
    input: ActionMessageOwnReactionInput,
  ) => Promise<EmptyResponse>;
}

@Injectable()
export class ActionService {
  private readonly actions: IActions;

  constructor(messageAction: MessageAction) {
    this.actions = {
      "message-create": (input) => messageAction.messageCreateAction(input),
      "message-update": (input) => messageAction.messageUpdateAction(input),
      "message-delete": (input) => messageAction.messageDeleteAction(input),
      "message-reaction-add": (input) =>
        messageAction.messageReactionAddAction(input),
      "message-reaction-delete": (input) =>
        messageAction.messageReactionDeleteAction(input),
    };
  }

  onAction<K extends keyof IActions>(name: K, input: any): Promise<any> {
    return this.actions[name](input);
  }
}
