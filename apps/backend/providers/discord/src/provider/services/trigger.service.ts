import { HttpService } from "@nestjs/axios";
import { Injectable, Logger, OnModuleInit } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { InjectRepository } from "@nestjs/typeorm";
import { firstValueFrom } from "rxjs";
import { Repository } from "typeorm";

import { AppGateway } from "~/app.gateway";
import { isObjectEquals } from "~/common/utils/object.utils";
import { TriggerEntity } from "~/provider/services/trigger.entity";

@Injectable()
export class TriggerService implements OnModuleInit {
  private readonly apiKey: string;
  private readonly baseUrl: string;
  private readonly logger: Logger;

  constructor(
    private readonly appGateway: AppGateway,
    @InjectRepository(TriggerEntity)
    private readonly triggerRepository: Repository<TriggerEntity>,
    private readonly httpService: HttpService,
    configService: ConfigService,
  ) {
    this.apiKey = configService.getOrThrow("API_KEY");
    this.baseUrl = configService.getOrThrow("BASE_API_REST_URL");
    this.logger = new Logger("TriggerService");
  }

  onModuleInit(): Promise<void> {
    return this.fetchAllTriggers();
  }

  async getTriggers(actionId: string, input: object) {
    const triggers = await this.getAllTriggerByAction(actionId);
    return triggers.filter((trigger) => isObjectEquals(input, trigger.input));
  }

  async registerTrigger(trigger: Omit<TriggerEntity, "id">) {
    const baseTrigger = await this.triggerRepository.findOneBy({
      baseId: trigger.baseId,
    });
    if (!baseTrigger)
      trigger = {
        ...baseTrigger,
        ...trigger,
      };
    return this.triggerRepository.save(trigger);
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
      await this.triggerRepository.clear();
      await this.triggerRepository.save<TriggerEntity>(res.data);
    } catch (error) {
      this.logger.error("Failed to fetch all triggers", error);
      if (t < 1)
        setTimeout(() => {
          this.logger.debug("Retry to fetch all triggers");
          this.fetchAllTriggers(t + 1);
        }, 5000);
    }
  }

  private async getAllTriggerByAction(
    actionId: string,
  ): Promise<Omit<TriggerEntity, "id">[]> {
    return this.triggerRepository.findBy({ actionId });
  }
}
