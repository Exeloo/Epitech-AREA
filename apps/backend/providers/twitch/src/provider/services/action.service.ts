import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { MessageAction } from "~/provider/actions/message.action";
import { ActionMessageCreateInput } from "~/provider/dto/inputs/message/action-message-create.input";
import { ActionMessageResponse } from "~/provider/dto/responses/action-message.response";

interface IActions {
  ["message-create"]: {
    params: ActionMessageCreateInput;
    response: ActionMessageResponse;
  };
}

export type IActionResponse<R> = Promise<{
  data: R[];
}>;

type IActionCallbacks = {
  [K in keyof IActions]: (
    userId: number,
    input: IActions[K]["params"],
    headers: object,
  ) => IActionResponse<IActions[K]["response"]>;
};

@Injectable()
export class ActionService {
  private readonly actions: IActionCallbacks;
  private readonly clientId: string;

  constructor(configService: ConfigService, messageAction: MessageAction) {
    this.clientId = configService.getOrThrow("TWITCH_CLIENT_ID");
    this.actions = {
      "message-create": (userId, input, headers) =>
        messageAction.messageCreateAction(userId, input, headers),
    };
  }

  async onAction<K extends keyof IActions>(
    name: K,
    userId: number,
    input: any,
  ): Promise<any> {
    const res = await this.actions[name](userId, input, this.getHeaders());
    return res.data[0];
  }

  getHeaders() {
    return {
      "Content-Type": "application/json",
      "Client-Id": this.clientId,
    };
  }
}
