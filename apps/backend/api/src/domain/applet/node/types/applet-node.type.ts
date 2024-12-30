import { ID } from "@d-type/id.type";

import { AppletNodeType } from "@domain/applet/node/enums/applet-node.type";
import { IApplet } from "@domain/applet/types/applet.type";
import { IIdentifiable } from "@domain/common/interfaces/models/identifiable.type";
import { ITimestampable } from "@domain/common/interfaces/models/timestampable.type";
import { IProvider } from "@domain/provider/types/provider.type";

export interface IAppletNode extends IIdentifiable, ITimestampable {
  provider?: IProvider;
  applet?: IApplet;
  actionId: string;
  actionType: AppletNodeType;
  input: object;
  previous?: IAppletNode[];
  next?: IAppletNode[];
}

export type IExposedAppletNode = Pick<
  IAppletNode,
  "id" | "actionId" | "actionType" | "input"
>;

export type IProviderAppletNode = Pick<IAppletNode, "actionId" | "input"> & {
  baseId: ID;
};
