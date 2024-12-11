import { manifest } from "../manifest";
import { IManifestTrigger } from "../manifest.type";

export const registerTrigger = (name: string, value: IManifestTrigger) => {
  manifest.triggers.set(name, value);
};
