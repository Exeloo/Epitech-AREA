import { Injectable } from "@nestjs/common";
import { OnEvent } from "@nestjs/event-emitter";

import { ManifestTrigger } from "@lib/manifest";

import { AppGateway } from "~/app.gateway";
import { TriggerCronInput } from "~/provider/dto/inputs/trigger-cron.input";
import { TriggerCronResponse } from "~/provider/dto/responses/trigger-cron.response";
import { TriggerEntity } from "~/provider/services/trigger.entity";
import { EventsEnum } from "~/provider/shared/event/event.enum";

@Injectable()
export class CronTrigger {
  constructor(private readonly appGateway: AppGateway) {}

  @ManifestTrigger({
    id: "on-cron",
    name: "On Cron",
    description: "Triggered every N times",
    img: "",
    color: "#ffffff",
    input: TriggerCronInput,
    output: TriggerCronResponse,
  })
  @OnEvent(EventsEnum.ON_CRON)
  async onCronTrigger(trigger: TriggerEntity) {
    this.appGateway.emit("on-cron", [trigger.baseId], {});
  }
}
