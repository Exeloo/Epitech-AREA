import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionMessageCreateInput } from "~/provider/dto/inputs/message/action-message-create.input";
import { MessageNode } from "~/provider/dto/nodes/message.node";

@Injectable()
export class MessageAction extends BaseHttpRepository {
  // eslint-disable-next-line @typescript-eslint/no-useless-constructor
  constructor(httpService: HttpService, configService: ConfigService) {
    super(httpService, configService);
  }

  @ManifestAction({
    id: "message-create",
    name: "Send Message",
    description: "Action to send a message on a channel",
    img: "",
    color: "#ffffff",
    input: ActionMessageCreateInput,
    output: MessageNode,
  })
  async messageCreateAction(
    input: ActionMessageCreateInput,
  ): Promise<MessageNode> {
    return this.post(`/channels/${input.channel_id}/messages`, {
      content: input.content,
    });
  }
}
