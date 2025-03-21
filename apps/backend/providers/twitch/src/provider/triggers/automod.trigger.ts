import { Injectable } from "@nestjs/common";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerMessageHoldInput } from "~/provider/dto/inputs/automod/trigger-message-hold.input";
import { TriggerTermsUpdateInput } from "~/provider/dto/inputs/automod/trigger-terms-update.input";
import { TriggerAutomodFlagEventResponse } from "~/provider/dto/responses/trigger-message-hold.response";
import { TriggerTermsChangeEventResponse } from "~/provider/dto/responses/trigger-terms-update.response";
import { TriggerService } from "~/provider/services/trigger.service";
import { EventsEnum } from "~/provider/shared/event/event.enum";

@Injectable()
export class AutomodTrigger {
  constructor(
    private readonly triggerService: TriggerService,
    private readonly appGateway: AppGateway,
  ) {}

  @ManifestTrigger({
    id: "automod-terms-update",
    name: "On Automod Terms Update",
    description: "Triggered when Automod terms are updated",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/bot-icone.svg?alt=media&token=596666ea-5c80-49ef-a9c4-0a5526ca4267",
    color: "#b9a3e3",
    input: TriggerTermsUpdateInput,
    output: TriggerTermsChangeEventResponse,
  })
  @OnEvent(EventsEnum.Automod_terms_update)
  async automodTermsUpdateTrigger(message: TriggerTermsChangeEventResponse) {
    const triggers = await this.triggerService.getTriggers(
      "automod-terms-update",
      {
        broadcaster_user_id: message.broadcaster_user_id,
      },
    );
    this.appGateway.emit(
      "automod-terms-update",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }

  @ManifestTrigger({
    id: "automod-message-hold",
    name: "On Automod Message Hold",
    description: "Triggered when Automod holds a message",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/bot-icone.svg?alt=media&token=596666ea-5c80-49ef-a9c4-0a5526ca4267",
    color: "#b9a3e3",
    input: TriggerMessageHoldInput,
    output: TriggerAutomodFlagEventResponse,
  })
  @OnEvent(EventsEnum.Automod_hold)
  async automodMessageHoldTrigger(message: TriggerAutomodFlagEventResponse) {
    const triggers = await this.triggerService.getTriggers(
      "automod-message-hold",
      {
        broadcaster_user_id: message.broadcaster_user_id,
      },
    );
    this.appGateway.emit(
      "automod-message-hold",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
}
