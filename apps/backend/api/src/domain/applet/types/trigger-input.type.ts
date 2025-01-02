import { ID } from "@d-type/id.type";

export interface ITriggerInput {
  name: string;
  triggered: ID[];
  data: object;
}
