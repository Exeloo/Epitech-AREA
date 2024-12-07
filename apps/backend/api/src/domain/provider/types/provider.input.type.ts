import { ProviderVisibility } from "@domain/provider/enums/provider-visibility.enum";
import { IProvider } from "@domain/provider/types/provider.type";

export interface IProviderInput extends Partial<IProvider> {
  providerId: string;
  host: string;
  visibility: ProviderVisibility;
}

export type IProviderCreateInput = Pick<
  IProviderInput,
  "providerId" | "host" | "visibility"
> &
  Partial<IProviderInput>;

export type IProviderUpdateInput = Partial<IProviderInput>;
