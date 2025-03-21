import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerAddReactionMessageInput } from "~/provider/dto/inputs/message/trigger-add-reaction-message.input";
import { TriggerMessageCreateInput } from "~/provider/dto/inputs/message/trigger-message-create.input";
import { TriggerMessageDeleteInput } from "~/provider/dto/inputs/message/trigger-message-delete.input";
import { TriggerMessageUpdateInput } from "~/provider/dto/inputs/message/trigger-message-update.input";
import { MessageNode } from "~/provider/dto/nodes/message.node";
import { AddReactionMessageResponse } from "~/provider/dto/response/add-reaction-message.response";
import { DeleteMessageResponse } from "~/provider/dto/response/delete-message.response";
import { DeleteReactionMessageResponse } from "~/provider/dto/response/delete-reaction-message.response";
import { TriggerService } from "~/provider/services/trigger.service";
import { EventsEnum } from "~/provider/shared/event/event.enum";

@Injectable()
export class MessageTrigger {
  constructor(
    private readonly configService: ConfigService,
    private readonly triggerService: TriggerService,
    private readonly appGateway: AppGateway,
  ) {}

  @ManifestTrigger({
    id: "message-create",
    name: "On Message Create",
    description: "Triggered when a message is send on a channel",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/chat-icone.svg?alt=media&token=95fda850-8161-4b99-a7b9-a04cac234f53",
    color: "#23272A",
    input: TriggerMessageCreateInput,
    output: MessageNode,
  })
  @OnEvent(EventsEnum.MESSAGE_CREATE)
  async messageCreateTrigger(message: MessageNode) {
    if (
      message.author.id === this.configService.getOrThrow("DISCORD_CLIENT_ID")
    )
      return;
    const triggers = await this.triggerService.getTriggers("message-create", {
      channel_id: message.channel_id,
    });
    this.appGateway.emit(
      "message-create",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }

  @ManifestTrigger({
    id: "message-update",
    name: "On Message Update",
    description: "Triggered when a message is update on a channel",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/chat-icone.svg?alt=media&token=95fda850-8161-4b99-a7b9-a04cac234f53",
    color: "#23272A",
    input: TriggerMessageUpdateInput,
    output: MessageNode,
  })
  @OnEvent(EventsEnum.MESSAGE_UPDATE)
  async messageUpdateTrigger(message: MessageNode) {
    if (
      message.author.id === this.configService.getOrThrow("DISCORD_CLIENT_ID")
    )
      return;
    const triggers = await this.triggerService.getTriggers("message-update", {
      channel_id: message.channel_id,
    });
    this.appGateway.emit(
      "message-update",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }

  @ManifestTrigger({
    id: "message-delete",
    name: "On Message Delete",
    description: "Triggered when a message is delete on a channel",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/chat-icone.svg?alt=media&token=95fda850-8161-4b99-a7b9-a04cac234f53",
    color: "#4E5D94",
    input: TriggerMessageDeleteInput,
    output: DeleteMessageResponse,
  })
  @OnEvent(EventsEnum.MESSAGE_DELETE)
  async messageDeleteTrigger(delete_out: DeleteMessageResponse) {
    const triggers = await this.triggerService.getTriggers("message-delete", {
      channel_id: delete_out.channel_id,
    });
    this.appGateway.emit(
      "message-delete",
      triggers.map((trigger) => trigger.baseId),
      delete_out,
    );
  }

  @ManifestTrigger({
    id: "message-reaction-add",
    name: "On Message Reaction Add",
    description: "Triggered when a reaction is add on a message",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/emoji.svg?alt=media&token=09bec447-2450-4150-8646-a92da8c0985f",
    color: "#4E5D94",
    input: TriggerAddReactionMessageInput,
    output: AddReactionMessageResponse,
  })
  @OnEvent(EventsEnum.MESSAGE_REACTION_ADD)
  async messageReactionAddTrigger(reaction: AddReactionMessageResponse) {
    const triggers = await this.triggerService.getTriggers(
      "message-reaction-add",
      {
        emoji_id: reaction.emoji.id,
      },
    );
    this.appGateway.emit(
      "message-reaction-add",
      triggers.map((trigger) => trigger.baseId),
      reaction,
    );
  }

  @ManifestTrigger({
    id: "message-reaction-delete",
    name: "On Message Reaction Delete",
    description: "Triggered when a reaction is delete on a message",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/emoji.svg?alt=media&token=09bec447-2450-4150-8646-a92da8c0985f",
    color: "#23272A",
    input: TriggerAddReactionMessageInput,
    output: DeleteReactionMessageResponse,
  })
  @OnEvent(EventsEnum.MESSAGE_REACTION_REMOVE)
  async messageReactionDeleteTrigger(reaction: DeleteReactionMessageResponse) {
    const triggers = await this.triggerService.getTriggers(
      "message-reaction-delete",
      {
        emoji_id: reaction.emoji.id,
      },
    );
    this.appGateway.emit(
      "message-reaction-delete",
      triggers.map((trigger) => trigger.baseId),
      reaction,
    );
  }
}
