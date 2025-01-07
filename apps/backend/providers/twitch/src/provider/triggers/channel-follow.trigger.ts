import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerChannelFollowInput } from "~/provider/dto/inputs/channel/trigger-channel-follow.input";
import { TriggerFollowEventResponse } from "~/provider/dto/responses/trigger-channel-follow.response";
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
}
