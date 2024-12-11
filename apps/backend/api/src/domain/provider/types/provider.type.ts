import { IIdentifiable } from "@domain/common/interfaces/models/identifiable.type";
import { ITimestampable } from "@domain/common/interfaces/models/timestampable.type";
import { ProviderVisibility } from "@domain/provider/enums/provider-visibility.enum";

export interface IProvider extends IIdentifiable, ITimestampable {
  providerId: string;
  host: string;
  visibility: ProviderVisibility;
}

export type IExposedProvider = Pick<IProvider, "id" | "visibility">;
