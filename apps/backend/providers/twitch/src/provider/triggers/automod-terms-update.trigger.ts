import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerTermsUpdateInput } from "~/provider/dto/inputs/automod/trigger-terms-update.input";
import { TriggerTermsChangeEventResponse } from "~/provider/dto/responses/trigger-terms-update.response";
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
    id: "automod-terms-update",
    name: "On Automod Terms Update",
    description: "Triggered when Automod terms are updated",
    img: "",
    color: "#ffffff",
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
}
