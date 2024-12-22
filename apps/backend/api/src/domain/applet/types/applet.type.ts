import { IAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IIdentifiable } from "@domain/common/interfaces/models/identifiable.type";
import { ITimestampable } from "@domain/common/interfaces/models/timestampable.type";
import { IUser } from "@domain/user/types/user.type";

export interface IApplet extends IIdentifiable, ITimestampable {
  name: string;
  description: string | null;
  owner?: IUser;
  nodes?: IAppletNode[];
}

export type IExposedApplet = Pick<IApplet, "id" | "name" | "description">;
