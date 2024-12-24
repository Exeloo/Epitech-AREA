import { HttpService } from "@nestjs/axios";
import { Injectable, OnModuleInit } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";

import { AppGateway } from "~/app.gateway";
import { isObjectEquals } from "~/common/utils/object.utils";
import { TriggerEntity } from "~/provider/services/trigger.entity";

@Injectable()
export class TriggerService implements OnModuleInit {
  private readonly apiKey: string;
  private readonly baseUrl: string;

  constructor(
    private readonly appGateway: AppGateway,
    @InjectRepository(TriggerEntity)
    private readonly triggerRepository: Repository<TriggerEntity>,
    private readonly httpService: HttpService,
    configService: ConfigService,
  ) {
    this.apiKey = configService.getOrThrow("API_KEY");
    this.baseUrl = configService.getOrThrow("BASE_API_REST_URL");
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

  async fetchAllTriggers(): Promise<void> {
    // const res = await firstValueFrom(
    //   this.httpService.get("/area/triggers", {
    //     headers: {
    //       "api-key": this.apiKey,
    //     },
    //     baseURL: this.baseUrl,
    //   }),
    // );
    // await this.triggerRepository.clear();
    // await this.triggerRepository.save<TriggerEntity>(res.data);
  }

  private async getAllTriggerByAction(
    actionId: string,
  ): Promise<Omit<TriggerEntity, "id">[]> {
    return this.triggerRepository.findBy({ actionId });
  }
}
