import { Injectable } from "@nestjs/common";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerCronInput } from "~/provider/dto/inputs/trigger-cron.input";
import { TriggerIntervalInput } from "~/provider/dto/inputs/trigger-interval.input";
import { TriggerCronResponse } from "~/provider/dto/responses/trigger-cron.response";
import { TriggerEntity } from "~/provider/services/trigger.entity";
import { EventsEnum } from "~/provider/shared/event/event.enum";

@Injectable()
export class CronTrigger {
  constructor(private readonly appGateway: AppGateway) {}

  @ManifestTrigger({
    id: "on-interval",
    name: "On Interval",
    description: "Triggered every N times",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/temps-passe.svg?alt=media&token=35e93f1f-6c8b-4b00-a1b8-9cd94013d799",
    color: "#85807f",
    input: TriggerIntervalInput,
    output: TriggerCronResponse,
  })
  @OnEvent(EventsEnum.ON_INTERVAL)
  async onIntervalTrigger(trigger: TriggerEntity) {
    this.appGateway.emit("on-interval", [trigger.baseId], {});
  }

  @ManifestTrigger({
    id: "on-cron",
    name: "On Cron",
    description: "Triggered as cron",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/icon-calendar.svg?alt=media&token=d2c1b0dd-279e-4acb-9735-9500b4b7bae0",
    color: "#5f5857",
    input: TriggerCronInput,
    output: TriggerCronResponse,
  })
  @OnEvent(EventsEnum.ON_CRON)
  async onCronTrigger(trigger: TriggerEntity) {
    this.appGateway.emit("on-cron", [trigger.baseId], {});
  }
}
