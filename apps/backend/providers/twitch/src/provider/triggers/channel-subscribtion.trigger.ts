import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerChannelSubscribeInput } from "~/provider/dto/inputs/channel/trigger-channel-subscribe.input";
import { TriggerSubscriptionEventResponse } from "~/provider/dto/responses/trigger-channel-subscribe.response";
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
    id: "channel-subscribe",
    name: "On channel subscribe",
    description: "Triggered when someone subscribe to a channel",
    img: "",
    color: "#ffffff",
    input: TriggerChannelSubscribeInput,
    output: TriggerSubscriptionEventResponse,
  })
  @OnEvent(EventsEnum.Channel_sub)
  async channelSubscribeTrigger(message: TriggerSubscriptionEventResponse) {
    const triggers = await this.triggerService.getTriggers("channel-subscribe", {
      broadcaster_user_id: message.broadcaster_user_id,
    });
    this.appGateway.emit(
      "channel-subscribe",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
}
