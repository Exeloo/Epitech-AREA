import { registerTrigger } from "@lib/manifest/functions/register/register-element";
import { IManifestTriggerInfo } from "@lib/manifest/types/manifest-element.type";

export const ManifestTrigger = (manifest: IManifestTriggerInfo) => {
  registerTrigger(manifest);
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  return (..._args: any[]) => {};
};
