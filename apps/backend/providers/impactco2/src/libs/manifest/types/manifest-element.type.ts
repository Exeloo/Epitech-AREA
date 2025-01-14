import { IManifestType } from "./manifest-type.type";

export interface IManifestTrigger {
  id: string;
  name: string;
  description: string;
  img: string;
  color: string;
  input: IManifestType;
  output: IManifestType;
}

export interface IManifestAction {
  id: string;
  name: string;
  description: string;
  img: string;
  color: string;
  input: IManifestType;
  output: IManifestType;
}

export interface IManifestTriggerInfo {
  id: string;
  name: string;
  description: string;
  img: string;
  color: string;
  input: any;
  output: any;
}

export interface IManifestActionInfo {
  id: string;
  name: string;
  description: string;
  img: string;
  color: string;
  input: any;
  output: any;
}
