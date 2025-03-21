import { Injectable } from "@nestjs/common";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerMessageCreateInput } from "~/provider/dto/inputs/message/trigger-message-create.input";
import { TriggerMessageDeleteInput } from "~/provider/dto/inputs/message/trigger-message-delete.input";
import { TriggerMessageDeleteResponse } from "~/provider/dto/responses/trigger-message-delete.response";
import { TriggerMessageResponse } from "~/provider/dto/responses/trigger-message.response";
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
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/chat-icone.svg?alt=media&token=95fda850-8161-4b99-a7b9-a04cac234f53",
    color: "#262626",
    input: TriggerMessageCreateInput,
    output: TriggerMessageResponse,
  })
  @OnEvent(EventsEnum.Channel_Chat_Message)
  async messageCreateTrigger(message: TriggerMessageResponse) {
    const triggers = await this.triggerService.getTriggers("message-create", {
      broadcaster_user_id: message.broadcaster_user_id,
    });
    this.appGateway.emit(
      "message-create",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }

  @ManifestTrigger({
    id: "message-delete",
    name: "On Message Delete",
    description: "Triggered when a message is deleted in a channel",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/chat-icone.svg?alt=media&token=95fda850-8161-4b99-a7b9-a04cac234f53",
    color: "#b9a3e3",
    input: TriggerMessageDeleteInput,
    output: TriggerMessageDeleteResponse,
  })
  @OnEvent(EventsEnum.Channel_Chat_Message_Delete)
  async messageDeleteTrigger(message: TriggerMessageDeleteResponse) {
    const triggers = await this.triggerService.getTriggers("message-delete", {
      broadcaster_user_id: message.broadcaster_user_id,
    });
    this.appGateway.emit(
      "message-delete",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
}
