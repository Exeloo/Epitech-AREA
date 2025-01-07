import { ObjectLiteral } from "@type/object.type";

import { IAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IManifest } from "@domain/provider/manifest/types/manifest.type";
import { IProvider } from "@domain/provider/types/provider.type";
import { IUser } from "@domain/user/types/user.type";

export const PROVIDER_SERVICE = "PROVIDER_SERVICE";

export interface IProviderService {
  getManifest(provider: IProvider): Promise<IManifest>;

  registerTrigger(
    provider: IProvider,
    user: IUser,
    node: Pick<IAppletNode, "id" | "actionId" | "input">,
  ): Promise<void>;

  runAction(
    provider: IProvider,
    node: Pick<IAppletNode, "id" | "actionId">,
    data: object,
  ): Promise<object>;

  getOAuthRedirect(
    provider: IProvider,
    userId: number,
  ): Promise<{ baseUrl: string }>;

  runOAuth(provider: IProvider, body: ObjectLiteral): Promise<void>;
}
