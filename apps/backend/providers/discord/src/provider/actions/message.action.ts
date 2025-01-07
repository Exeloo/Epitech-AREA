import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionMessageCreateInput } from "~/provider/dto/inputs/message/action-message-create.input";
import { ActionMessageDeleteInput } from "~/provider/dto/inputs/message/action-message-delete.input";
import { ActionMessageOwnReactionInput } from "~/provider/dto/inputs/message/action-message-own-reaction.input";
import { ActionMessageUpdateInput } from "~/provider/dto/inputs/message/action-message-update.input";
import { MessageNode } from "~/provider/dto/nodes/message.node";
import { EmptyResponse } from "~/provider/dto/response/empty.response";

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

  @ManifestAction({
    id: "message-update",
    name: "Update Message",
    description: "Action to update a message on a channel",
    img: "",
    color: "#ffffff",
    input: ActionMessageUpdateInput,
    output: MessageNode,
  })
  async messageUpdateAction(
    input: ActionMessageUpdateInput,
  ): Promise<MessageNode> {
    return this.post(`/channels/${input.channel_id}/messages/${input.id}`, {
      content: input.content,
    });
  }

  @ManifestAction({
    id: "message-delete",
    name: "Delete Message",
    description: "Action to delete a message on a channel",
    img: "",
    color: "#ffffff",
    input: ActionMessageDeleteInput,
    output: EmptyResponse,
  })
  async messageDeleteAction(
    input: ActionMessageDeleteInput,
  ): Promise<EmptyResponse> {
    return this.delete(
      `/channels/${input.channel_id}/messages/${input.id}`,
      {},
    );
  }

  @ManifestAction({
    id: "message-reaction-add",
    name: "Reaction Add Message",
    description: "Action to add a reaction on a message",
    img: "",
    color: "#ffffff",
    input: ActionMessageOwnReactionInput,
    output: EmptyResponse,
  })
  async messageReactionAddAction(
    input: ActionMessageOwnReactionInput,
  ): Promise<EmptyResponse> {
    return this.put(
      `/channels/${input.channel_id}/messages/${input.message_id}/reactions/${input.emoji}/@me`,
      {},
    );
  }

  @ManifestAction({
    id: "message-reaction-delete",
    name: "Reaction Delete Message",
    description: "Action to delete a reaction on a message",
    img: "",
    color: "#ffffff",
    input: ActionMessageOwnReactionInput,
    output: EmptyResponse,
  })
  async messageReactionDeleteAction(
    input: ActionMessageOwnReactionInput,
  ): Promise<EmptyResponse> {
    return this.delete(
      `/channels/${input.channel_id}/messages/${input.message_id}/reactions/${input.emoji}/@me`,
      {},
    );
  }
}
