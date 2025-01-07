import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerChannelSubscribeEndInput } from "~/provider/dto/inputs/channel/trigger-channel-subscribe-end.input";
import { TriggerSubscriptionEndEventResponse } from "~/provider/dto/responses/trigger-channel-subscribe-end.response";
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
    id: "channel-subscribe-end",
    name: "On channel subscribe end",
    description: "Triggered when subscription to a channel end",
    img: "",
    color: "#ffffff",
    input: TriggerChannelSubscribeEndInput,
    output: TriggerSubscriptionEndEventResponse,
  })
  @OnEvent(EventsEnum.Channel_sub_end)
  async channelSubscribeEndTrigger(
    message: TriggerSubscriptionEndEventResponse,
  ) {
    const triggers = await this.triggerService.getTriggers(
      "channel-subscribe-end",
      {
        broadcaster_user_id: message.broadcaster_user_id,
      },
    );
    this.appGateway.emit(
      "channel-subscribe-end",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
}
