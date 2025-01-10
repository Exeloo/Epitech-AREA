import { registerAction } from "@lib/manifest/functions/register/register-element";
import { IManifestActionInfo } from "@lib/manifest/types/manifest-element.type";

export const ManifestAction = (manifest: IManifestActionInfo) => {
  registerAction(manifest);
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  return (..._args: any[]) => {};
};
