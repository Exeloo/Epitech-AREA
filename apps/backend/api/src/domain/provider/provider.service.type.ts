import { IAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IManifest } from "@domain/provider/manifest/types/manifest.type";
import { IProvider } from "@domain/provider/types/provider.type";

export const PROVIDER_SERVICE = "PROVIDER_SERVICE";

export interface IProviderService {
  getManifest(provider: IProvider): Promise<IManifest>;

  registerTrigger(
    provider: IProvider,
    node: Pick<IAppletNode, "id" | "actionId" | "input">,
  ): Promise<void>;
}
