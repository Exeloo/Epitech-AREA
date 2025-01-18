import { ID } from "@d-type/id.type";

export interface IAppletNodeInput {
  actionId: string;
  providerId: ID;
  input: object;
  next: IAppletNodeInput[];
}

export interface IAppletInput {
  name: string;
  description: string | null;
  triggerNodes: IAppletNodeInput[];
}
