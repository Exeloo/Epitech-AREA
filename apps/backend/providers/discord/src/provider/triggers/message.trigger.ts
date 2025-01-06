import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerMessageCreateInput } from "~/provider/dto/inputs/message/trigger-message-create.input";
import { TriggerMessageUpdateInput } from "~/provider/dto/inputs/message/trigger-message-update.input"
import { MessageNode } from "~/provider/dto/nodes/message.node";
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
    img: "",
    color: "#ffffff",
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
    img: "",
    color: "#ffffff",
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
      id: message.channel_id,
    });
    this.appGateway.emit(
        "message-update",
        triggers.map((trigger) => trigger.baseId),
        message,
    );
  }
}
