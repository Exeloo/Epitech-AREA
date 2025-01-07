import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerChannelRaidInput } from "~/provider/dto/inputs/channel/trigger-channel-raid.input";
import { TriggerRaidEventResponse } from "~/provider/dto/responses/trigger-channel-raid.response";
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
    id: "channel-raid",
    name: "On channel raid",
    description: "Triggered when someone raid a channel",
    img: "",
    color: "#ffffff",
    input: TriggerChannelRaidInput,
    output: TriggerRaidEventResponse,
  })
  @OnEvent(EventsEnum.Channel_raid)
  async channeRaidTrigger(message: TriggerRaidEventResponse) {
    const triggers = await this.triggerService.getTriggers("channel-raid", {
      from_broadcaster_user_id: message.from_broadcaster_user_id,
    });
    this.appGateway.emit(
      "channel-raid",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
}
