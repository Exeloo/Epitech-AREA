import { HttpService } from "@nestjs/axios";
import { Injectable, Logger, OnModuleInit } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { InjectRepository } from "@nestjs/typeorm";
import { firstValueFrom } from "rxjs";
import { Repository } from "typeorm";

import { isObjectEquals } from "~/common/utils/object.utils";
import { TriggerEntity } from "~/provider/services/trigger.entity";
import { AuthService } from "~/provider/shared/auth/auth.service";
import { EventsEnum } from "~/provider/shared/event/event.enum";

const EVENTS: [string[], EventsEnum][] = [
  [["message-create"], EventsEnum.Channel_Chat_Message],
];

const VERSIONS = {
  [EventsEnum.Channel_Chat_Message]: 1,
};

const OWNERS_FIELD = {
  [EventsEnum.Channel_Chat_Message]: "user_id",
};

@Injectable()
export class TriggerService implements OnModuleInit {
  private readonly apiKey: string;
  private readonly baseUrl: string;
  private sessionId: string;
  private readonly logger: Logger;
  private readonly clientId: string;
  private readonly subscriptionUrl: string;

  constructor(
    private readonly authService: AuthService,
    @InjectRepository(TriggerEntity)
    private readonly triggerRepository: Repository<TriggerEntity>,
    private readonly httpService: HttpService,
    configService: ConfigService,
  ) {
    this.apiKey = configService.getOrThrow("API_KEY");
    this.baseUrl = configService.getOrThrow("BASE_API_REST_URL");
    this.clientId = configService.getOrThrow("TWITCH_CLIENT_ID");
    this.subscriptionUrl = configService.getOrThrow("PROVIDER_BASE_API_URL");
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
    if (baseTrigger)
      trigger = {
        ...baseTrigger,
        ...trigger,
      };
    await this.triggerRepository.save(trigger);
    return this.registerTriggerToProvider(trigger);
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

  setSession(id: string) {
    this.sessionId = id;
  }

  async registerTriggerToProvider(trigger: Omit<TriggerEntity, "id">) {
    const e = EVENTS.find((value) => value[0].includes(trigger.actionId))[1];
    return this.registerEventToProvider(e, trigger.input, trigger.userId);
  }

  async registerAllTriggersToProvider() {
    const triggers = await this.triggerRepository.find();
    for (const trigger of triggers) {
      await this.registerTriggerToProvider(trigger);
    }
  }

  private async getAllTriggerByAction(
    actionId: string,
  ): Promise<Omit<TriggerEntity, "id">[]> {
    return this.triggerRepository.findBy({ actionId });
  }

  private async registerEventToProvider(
    event: EventsEnum,
    input: object,
    userId: number,
  ): Promise<void> {
    try {
      await firstValueFrom(
        this.httpService.post(
          "/eventsub/subscriptions",
          {
            type: event,
            version: VERSIONS[event],
            condition: input,
            transport: {
              method: "websocket",
              session_id: this.sessionId,
            },
          },
          {
            headers: {
              "Content-Type": "application/json",
              "Client-Id": this.clientId,
              Authorization: await this.authService.getToken(
                userId,
                input[OWNERS_FIELD[event]],
              ),
            },
            baseURL: this.subscriptionUrl,
          },
        ),
      );
    } catch (error) {
      this.logger.error("Failed to register event", error);
    }
  }
}
