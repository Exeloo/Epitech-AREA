import { manifest } from "../manifest";
import { IManifestType } from "../manifest.type";

export const registerType = (name: string, value: IManifestType) => {
  manifest.types.set(name, value);
};
