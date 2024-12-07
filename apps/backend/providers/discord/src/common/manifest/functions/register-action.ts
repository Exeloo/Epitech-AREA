import { manifest } from "../manifest";
import { IManifestAction } from "../manifest.type";

export const registerAction = (name: string, value: IManifestAction) => {
  manifest.actions.set(name, value);
};
