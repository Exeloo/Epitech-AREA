import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerMessageHoldInput } from "~/provider/dto/inputs/automod/trigger-message-hold.input";
import { TriggerAutomodFlagEventResponse} from "~/provider/dto/responses/trigger-message-hold.response";
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
    id: "automod-message-hold",
    name: "On Automod Message Hold",
    description: "Triggered when Automod holds a message",
    img: "",
    color: "#ffffff",
    input: TriggerMessageHoldInput,
    output: TriggerAutomodFlagEventResponse,
  })
  @OnEvent(EventsEnum.Automod_hold)
  async automodMessageHoldTrigger(message: TriggerAutomodFlagEventResponse) {
    const triggers = await this.triggerService.getTriggers("automod-message-hold", {
      broadcaster_user_id: message.broadcaster_user_id,
    });
    this.appGateway.emit(
      "automod-message-hold",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
}
