import { Injectable } from "@nestjs/common";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerMessageCreateInput } from "~/provider/dto/inputs/message/trigger-message-create.input";
import { MessageNode } from "~/provider/dto/nodes/message.node";
import { TriggerService } from "~/provider/services/trigger.service";
import { EventsEnum } from "~/provider/shared/event/event.enum";

@Injectable()
export class MessageTrigger {
  constructor(
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
    const triggers = await this.triggerService.getTriggers("message-create", {
      channel_id: message.channel_id,
    });
    this.appGateway.emit(
      "message-create",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
}
