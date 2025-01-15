import { Injectable } from "@nestjs/common";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { ChannelBanConditionInput } from "~/provider/dto/inputs/channel/trigger-channel-ban.input";
import { ChannelChatClearInput } from "~/provider/dto/inputs/channel/trigger-channel-chat-clear.input";
import { TriggerChannelFollowInput } from "~/provider/dto/inputs/channel/trigger-channel-follow.input";
import { TriggerChannelModeratorAddInput } from "~/provider/dto/inputs/channel/trigger-channel-mod-add.input";
import { ChannelPointsCustomRewardAddConditionInput } from "~/provider/dto/inputs/channel/trigger-channel-points-custom-reward-add.input";
import { TriggerChannelRaidInput } from "~/provider/dto/inputs/channel/trigger-channel-raid.input";
import { ChannelSubscriptionGiftInput } from "~/provider/dto/inputs/channel/trigger-channel-sub-gift.input";
import { TriggerChannelSubscribeEndInput } from "~/provider/dto/inputs/channel/trigger-channel-subscribe-end.input";
import { TriggerChannelSubscribeInput } from "~/provider/dto/inputs/channel/trigger-channel-subscribe.input";
import { TriggerChannelUnbanInput } from "~/provider/dto/inputs/channel/trigger-channel-unban.input";
import { ChannelUpdateConditionInput } from "~/provider/dto/inputs/channel/trigger-channel-update.input";
import { ChannelBanEventResponse } from "~/provider/dto/responses/trigger-channel-ban.response";
import { ChannelChatClearResponse } from "~/provider/dto/responses/trigger-channel-chat-clear.response";
import { TriggerFollowEventResponse } from "~/provider/dto/responses/trigger-channel-follow.response";
import { ChannelModeratorAddEventResponse } from "~/provider/dto/responses/trigger-channel-mod-add.response";
import { ChannelPointsCustomRewardAddEventResponse } from "~/provider/dto/responses/trigger-channel-points-custom-reward-add.response";
import { TriggerRaidEventResponse } from "~/provider/dto/responses/trigger-channel-raid.response";
import { ChannelSubscriptionGiftEventResponse } from "~/provider/dto/responses/trigger-channel-sub-gift.response";
import { TriggerSubscriptionEndEventResponse } from "~/provider/dto/responses/trigger-channel-subscribe-end.response";
import { TriggerSubscriptionEventResponse } from "~/provider/dto/responses/trigger-channel-subscribe.response";
import { ChannelUnbanEventResponse } from "~/provider/dto/responses/trigger-channel-unban.response";
import { ChannelUpdateEventResponse } from "~/provider/dto/responses/trigger-channel-update.response";
import { TriggerService } from "~/provider/services/trigger.service";
import { EventsEnum } from "~/provider/shared/event/event.enum";

@Injectable()
export class ChannelTrigger {
  constructor(
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

  @ManifestTrigger({
    id: "channel-unban",
    name: "On channel unban",
    description: "Triggered when someone unban from a channel",
    img: "",
    color: "#ffffff",
    input: TriggerChannelUnbanInput,
    output: ChannelUnbanEventResponse,
  })
  @OnEvent(EventsEnum.Channel_unban)
  async channelUnbanTrigger(message: ChannelUnbanEventResponse) {
    const triggers = await this.triggerService.getTriggers("channel-unban", {
      broadcaster_user_id: message.broadcaster_user_id,
      user_id: message.user_id,
    });
    this.appGateway.emit(
      "channel-unban",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }

  @ManifestTrigger({
    id: "channel-moderator-add",
    name: "On channel moderator add",
    description: "Triggered when someone add as a moderator to a channel",
    img: "",
    color: "#ffffff",
    input: TriggerChannelModeratorAddInput,
    output: ChannelModeratorAddEventResponse,
  })
  @OnEvent(EventsEnum.Channel_mod_add)
  async channelModeratorAddTrigger(message: ChannelModeratorAddEventResponse) {
    const triggers = await this.triggerService.getTriggers(
      "channel-moderator-add",
      {
        broadcaster_user_id: message.broadcaster_user_id,
        user_id: message.user_id,
      },
    );
    this.appGateway.emit(
      "channel-moderator-add",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }

  @ManifestTrigger({
    id: "channel-sub-gift",
    name: "On channel subscribe gift",
    description: "Triggered when someone gift a subscription to a channel",
    img: "",
    color: "#ffffff",
    input: ChannelSubscriptionGiftInput,
    output: ChannelSubscriptionGiftEventResponse,
  })
  @OnEvent(EventsEnum.Channel_sub_gift)
  async channelSubGiftTrigger(message: ChannelSubscriptionGiftEventResponse) {
    const triggers = await this.triggerService.getTriggers("channel-sub-gift", {
      broadcaster_user_id: message.broadcaster_user_id,
    });
    this.appGateway.emit(
      "channel-sub-gift",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }

  @ManifestTrigger({
    id: "channel-chat-clear",
    name: "On channel chat clear",
    description: "Triggered when chat clear in a channel",
    img: "",
    color: "#ffffff",
    input: ChannelChatClearInput,
    output: ChannelChatClearResponse,
  })
  @OnEvent(EventsEnum.Channel_chat_clear)
  async channelChatClearTrigger(message: ChannelChatClearResponse) {
    const triggers = await this.triggerService.getTriggers(
      "channel-chat-clear",
      {
        broadcaster_user_id: message.broadcaster_user_id,
      },
    );
    this.appGateway.emit(
      "channel-chat-clear",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }

  @ManifestTrigger({
    id: "channel-update",
    name: "On channel update",
    description: "Triggered when channel update",
    img: "",
    color: "#ffffff",
    input: ChannelUpdateConditionInput,
    output: ChannelUpdateEventResponse,
  })
  @OnEvent(EventsEnum.Channel_update)
  async channelUpdateTrigger(message: ChannelUpdateEventResponse) {
    const triggers = await this.triggerService.getTriggers("channel-update", {
      broadcaster_user_id: message.broadcaster_user_id,
    });
    this.appGateway.emit(
      "channel-update",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }

  @ManifestTrigger({
    id: "channel-ban",
    name: "On channel ban",
    description: "Triggered when someone ban from a channel",
    img: "",
    color: "#ffffff",
    input: ChannelBanConditionInput,
    output: ChannelBanEventResponse,
  })
  @OnEvent(EventsEnum.Channel_ban)
  async channelBanTrigger(message: ChannelBanEventResponse) {
    const triggers = await this.triggerService.getTriggers("channel-ban", {
      broadcaster_user_id: message.broadcaster_user_id,
      user_id: message.user_id,
    });
    this.appGateway.emit(
      "channel-ban",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }

  @ManifestTrigger({
    id: "channel.channel_points_custom_reward.add",
    name: "On channel points custom reward add",
    description: "Triggered when someone add a custom reward to a channel",
    img: "",
    color: "#ffffff",
    input: ChannelPointsCustomRewardAddConditionInput,
    output: ChannelPointsCustomRewardAddEventResponse,
  })
  @OnEvent(EventsEnum.Channel_Points_Custom_Reward_Add)
  async channelPointsCustomRewardAddTrigger(
    message: ChannelPointsCustomRewardAddEventResponse,
  ) {
    const triggers = await this.triggerService.getTriggers(
      "channel.channel_points_custom_reward.add",
      {
        broadcaster_user_id: message.broadcaster_user_id,
      },
    );
    this.appGateway.emit(
      "channel.channel_points_custom_reward.add",
      triggers.map((trigger) => trigger.baseId),
      message,
    );
  }
}
