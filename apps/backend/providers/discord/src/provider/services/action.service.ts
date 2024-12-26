import { Injectable } from "@nestjs/common";

import { MessageAction } from "~/provider/actions/message.action";
import { ActionMessageCreateInput } from "~/provider/dto/inputs/message/action-message-create.input";
import { MessageNode } from "~/provider/dto/nodes/message.node";

interface IActions {
  ["message-create"]: (input: ActionMessageCreateInput) => Promise<MessageNode>;
}

@Injectable()
export class ActionService {
  private readonly actions: IActions;

  constructor(messageAction: MessageAction) {
    this.actions = {
      "message-create": (input) => messageAction.messageCreateAction(input),
    };
  }

  onAction<K extends keyof IActions>(name: K, input: any): Promise<any> {
    return this.actions[name](input);
  }
}
