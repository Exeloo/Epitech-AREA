import { HttpService } from "@nestjs/axios";
import { Injectable, Logger, OnModuleInit } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { SchedulerRegistry } from "@nestjs/schedule";
import { CronJob } from "cron";
import { firstValueFrom } from "rxjs";

import { TriggerEntity } from "~/provider/services/trigger.entity";
import { EventsEnum } from "~/provider/shared/event/event.enum";
import { EventService } from "~/provider/shared/event/event.service";

const UNITS = {
  s: 1000,
  m: 60000,
  h: 3600000,
  d: 86400000,
  w: 604800000,
  M: 2592000000,
  y: 31536000000,
};

@Injectable()
export class TriggerService implements OnModuleInit {
  private readonly apiKey: string;
  private readonly baseUrl: string;
  private readonly logger: Logger;

  constructor(
    private readonly eventService: EventService,
    private readonly httpService: HttpService,
    private readonly schedulerRegistry: SchedulerRegistry,
    configService: ConfigService,
  ) {
    this.apiKey = configService.getOrThrow("API_KEY");
    this.baseUrl = configService.getOrThrow("BASE_API_REST_URL");
    this.logger = new Logger("TriggerService");
  }

  onModuleInit(): Promise<void> {
    return this.fetchAllTriggers();
  }

  registerTrigger(trigger: TriggerEntity) {
    if (trigger.actionId === "on-cron") return this.registerCron(trigger);
    if (trigger.actionId === "on-interval")
      return this.registerInterval(trigger);
  }

  registerCron(trigger: TriggerEntity) {
    if (this.schedulerRegistry.doesExist("cron", trigger.baseId.toString()))
      return;

    const job = new CronJob(trigger.input.cron, () => {
      this.eventService.emit(EventsEnum.ON_CRON, [trigger]);
    });
    this.schedulerRegistry.addCronJob(trigger.baseId.toString(), job as any);
    job.start();
  }

  registerInterval(trigger: TriggerEntity) {
    if (this.schedulerRegistry.doesExist("interval", trigger.baseId.toString()))
      return;
    const t = setInterval(() => {
      this.eventService.emit(EventsEnum.ON_INTERVAL, [trigger]);
    }, UNITS[trigger.input.unit] * trigger.input.time);
    this.schedulerRegistry.addInterval(trigger.baseId.toString(), t);
  }

  async fetchAllTriggers(t = 0): Promise<void> {
    try {
      const res = await firstValueFrom(
        this.httpService.get("/area/triggers", {
          headers: {
            "api-key": this.apiKey,
          },
          baseURL: this.baseUrl,
        }),
      );
      for (const trigger of res.data) {
        this.registerTrigger(trigger);
      }
    } catch (error) {
      this.logger.error("Failed to fetch all triggers", error);
      if (t < 1)
        setTimeout(() => {
          this.logger.debug("Retry to fetch all triggers");
          this.fetchAllTriggers(t + 1);
        }, 5000);
    }
  }
}
