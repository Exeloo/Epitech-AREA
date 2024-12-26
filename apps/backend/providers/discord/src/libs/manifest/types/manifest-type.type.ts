import { IManifestProperty } from "./manifest-property.type";

export interface IManifestType {
  [key: string]: IManifestProperty;
}
