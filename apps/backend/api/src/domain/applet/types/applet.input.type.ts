import { ID } from "@d-type/id.type";

export interface IAppletNodeCreateInput {
  actionId: string;
  providerId: ID;
  input: object;
  next: IAppletNodeCreateInput[];
}

export interface IAppletCreateInput {
  name: string;
  description: string | null;
  triggerNodes: IAppletNodeCreateInput[];
}
