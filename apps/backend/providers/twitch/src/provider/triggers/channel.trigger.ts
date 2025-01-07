import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerChannelFollowInput } from "~/provider/dto/inputs/channel/trigger-channel-follow.input";
import { TriggerChannelRaidInput } from "~/provider/dto/inputs/channel/trigger-channel-raid.input";
import { TriggerChannelSubscribeEndInput } from "~/provider/dto/inputs/channel/trigger-channel-subscribe-end.input";
import { TriggerChannelSubscribeInput } from "~/provider/dto/inputs/channel/trigger-channel-subscribe.input";
import { TriggerFollowEventResponse } from "~/provider/dto/responses/trigger-channel-follow.response";
import { TriggerRaidEventResponse } from "~/provider/dto/responses/trigger-channel-raid.response";
import { TriggerSubscriptionEndEventResponse } from "~/provider/dto/responses/trigger-channel-subscribe-end.response";
import { TriggerSubscriptionEventResponse } from "~/provider/dto/responses/trigger-channel-subscribe.response";
import { TriggerService } from "~/provider/services/trigger.service";
import { EventsEnum } from "~/provider/shared/event/event.enum";

@Injectable()
export class ChannelTrigger {
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
      to_broadcaster_user_id: message.to_broadcaster_user_id,
    });
    this.appGateway.emit(
      "channel-raid",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
  @ManifestTrigger({
    id: "channel-subscribe",
    name: "On channel subscribe",
    description: "Triggered when someone subscribe to a channel",
    img: "",
    color: "#ffffff",
    input: TriggerChannelSubscribeInput,
    output: TriggerSubscriptionEventResponse,
  })
  @OnEvent(EventsEnum.Channel_Sub)
  async channelSubscribeTrigger(message: TriggerSubscriptionEventResponse) {
    const triggers = await this.triggerService.getTriggers(
      "channel-subscribe",
      {
        broadcaster_user_id: message.broadcaster_user_id,
      },
    );
    this.appGateway.emit(
      "channel-subscribe",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
  @ManifestTrigger({
    id: "channel-follow",
    name: "On channel follow",
    description: "Triggered when someone follow a channel",
    img: "",
    color: "#ffffff",
    input: TriggerChannelFollowInput,
    output: TriggerFollowEventResponse,
  })
  @OnEvent(EventsEnum.Channel_follow)
  async channelFollowTrigger(message: TriggerFollowEventResponse) {
    const triggers = await this.triggerService.getTriggers("channel-follow", {
      broadcaster_user_id: message.broadcaster_user_id,
    });
    this.appGateway.emit(
      "channel-follow",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
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
