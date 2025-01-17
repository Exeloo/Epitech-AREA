import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionMessageCreateInput } from "~/provider/dto/inputs/message/action-message-create.input";
import { ActionMessageResponse } from "~/provider/dto/responses/action-message.response";
import { IActionResponse } from "~/provider/services/action.service";
import { AuthService } from "~/provider/shared/auth/auth.service";

@Injectable()
export class MessageAction extends BaseHttpRepository {
  constructor(
    httpService: HttpService,
    configService: ConfigService,
    private readonly authService: AuthService,
  ) {
    super(httpService, configService);
  }

  @ManifestAction({
    id: "message-create",
    name: "Send Message",
    description: "Action to send a message on a broadcaster chat",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/chat-bot.png?alt=media&token=ea64b54d-1d40-4049-9412-31239eeafae5",
    color: "#b9a3e3",
    input: ActionMessageCreateInput,
    output: ActionMessageResponse,
  })
  async messageCreateAction(
    userId: number,
    input: ActionMessageCreateInput,
    headers: object,
  ): IActionResponse<ActionMessageResponse> {
    return this.post(`/chat/messages`, input, {
      headers: {
        ...headers,
        Authorization: await this.authService.getToken(userId, input.sender_id),
      },
    });
  }
}
