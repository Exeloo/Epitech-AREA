import { TriggerFollowEventResponse } from "~/provider/dto/responses/trigger-channel-follow.response";
import { TriggerRaidEventResponse } from "~/provider/dto/responses/trigger-channel-raid.response";
import { TriggerSubscriptionEndEventResponse } from "~/provider/dto/responses/trigger-channel-subscribe-end.response";
import { TriggerSubscriptionEventResponse } from "~/provider/dto/responses/trigger-channel-subscribe.response";
import { TriggerMessageDeleteResponse } from "~/provider/dto/responses/trigger-message-delete.response";
import { TriggerAutomodFlagEventResponse } from "~/provider/dto/responses/trigger-message-hold.response";
import { TriggerMessageResponse } from "~/provider/dto/responses/trigger-message.response";
import { TriggerTermsChangeEventResponse } from "~/provider/dto/responses/trigger-terms-update.response";
import { ChannelUnbanEventResponse } from "~/provider/dto/responses/trigger-channel-unban.response";
import { ChannelSubscriptionGiftEventResponse } from "~/provider/dto/responses/trigger-channel-sub-gift.response";
import { ChannelModeratorAddEventResponse } from "~/provider/dto/responses/trigger-channel-mod-add.response";
import { ChannelChatClearResponse } from "~/provider/dto/responses/trigger-channel-chat-clear.response";
import { ChannelUpdateEventResponse } from "~/provider/dto/responses/trigger-channel-update.response";

export enum EventsEnum {
  Channel_Chat_Message = "channel.chat.message",
  Channel_Chat_Message_Delete = "channel.chat.message_delete",
  Channel_follow = "channel.follow",
  Channel_raid = "channel.raid",
  Channel_Sub = "channel.sub",
  Automod_terms_update = "automod.terms.update",
  Automod_hold = "automod.message.hold",
  Channel_sub_end = "channel.subscription.end",
  Channel_unban = "channel.unban",
  Channel_sub_gift = "channel.subscription.gift",
  Channel_mod_add = "channel.moderator.add",
  Channel_chat_clear = "channel.chat.clear",
  Channel_update = "channel.update",
}

export interface IEvents {
  [EventsEnum.Channel_Chat_Message]: [message: TriggerMessageResponse];
  [EventsEnum.Channel_Chat_Message_Delete]: [
    message: TriggerMessageDeleteResponse,
  ];
  [EventsEnum.Channel_follow]: [message: TriggerFollowEventResponse];
  [EventsEnum.Channel_raid]: [message: TriggerRaidEventResponse];
  [EventsEnum.Channel_Sub]: [message: TriggerSubscriptionEventResponse];
  [EventsEnum.Automod_terms_update]: [message: TriggerTermsChangeEventResponse];
  [EventsEnum.Automod_hold]: [message: TriggerAutomodFlagEventResponse];
  [EventsEnum.Channel_sub_end]: [message: TriggerSubscriptionEndEventResponse];
  [EventsEnum.Channel_unban]: [message: ChannelUnbanEventResponse];
  [EventsEnum.Channel_sub_gift]: [message: ChannelSubscriptionGiftEventResponse];
  [EventsEnum.Channel_mod_add]: [message: ChannelModeratorAddEventResponse];
  [EventsEnum.Channel_chat_clear]: [message: ChannelChatClearResponse];
  [EventsEnum.Channel_update]: [message: ChannelUpdateEventResponse];
}
