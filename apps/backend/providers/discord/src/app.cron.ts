import { Injectable, Logger } from "@nestjs/common";
import { Cron } from "@nestjs/schedule";

import { TriggerService } from "~/provider/services/trigger.service";

@Injectable()
export class AppCron {
  private readonly logger = new Logger(`Cron (AppCron)`);

  constructor(private readonly triggerService: TriggerService) {}

  /**
   * Run fetchAllTriggers cron every day at 3am
   */
  @Cron("0 0 3 * * *")
  fetchAllTriggers(): Promise<void> {
    this.logger.log("Starting CRON task fetchAllTriggers");
    return this.triggerService.fetchAllTriggers();
  }
}
