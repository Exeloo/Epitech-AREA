import { IIdentifiable } from "@domain/common/interfaces/models/identifiable.type";
import { ITimestampable } from "@domain/common/interfaces/models/timestampable.type";

export interface IApplet extends IIdentifiable, ITimestampable {
  name: string;
}

export type IExposedApplet = Pick<IApplet, "id" | "name">;
