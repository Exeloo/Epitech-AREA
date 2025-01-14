import { TriggerEntity } from "~/provider/services/trigger.entity";

export enum EventsEnum {
  ON_CRON = "ON_CRON",
}

export interface IEvents {
  [EventsEnum.ON_CRON]: [trigger: TriggerEntity];
}
