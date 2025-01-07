import { TriggerFollowEventResponse } from "~/provider/dto/responses/trigger-channel-follow.response";
import { TriggerRaidEventResponse } from "~/provider/dto/responses/trigger-channel-raid.response";
import { TriggerSubscriptionEndEventResponse } from "~/provider/dto/responses/trigger-channel-subscribe-end.response";
import { TriggerSubscriptionEventResponse } from "~/provider/dto/responses/trigger-channel-subscribe.response";
import { TriggerMessageDeleteResponse } from "~/provider/dto/responses/trigger-message-delete.response";
import { TriggerAutomodFlagEventResponse } from "~/provider/dto/responses/trigger-message-hold.response";
import { TriggerMessageResponse } from "~/provider/dto/responses/trigger-message.response";
import { TriggerTermsChangeEventResponse } from "~/provider/dto/responses/trigger-terms-update.response";

export enum EventsEnum {
  Channel_Chat_Message = "channel.chat.message",
  Channel_Chat_Message_Delete = "channel.chat.message_delete",
  Channel_follow = "channel.follow",
  Channel_raid = "channel.raid",
  Channel_Sub = "channel.sub",
  Automod_terms_update = "automod.terms.update",
  Automod_hold = "automod.message.hold",
  Channel_sub_end = "channel.subscription.end",
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
}
