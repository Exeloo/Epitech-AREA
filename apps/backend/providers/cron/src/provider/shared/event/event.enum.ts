import { TriggerEntity } from "~/provider/services/trigger.entity";

export enum EventsEnum {
  ON_CRON = "ON_CRON",
  ON_INTERVAL = "ON_INTERVAL",
}

export interface IEvents {
  [EventsEnum.ON_CRON]: [trigger: TriggerEntity];
  [EventsEnum.ON_INTERVAL]: [trigger: TriggerEntity];
}
