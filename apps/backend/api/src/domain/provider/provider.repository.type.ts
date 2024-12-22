import { IProvider } from "src/domain/provider/types/provider.type";

import { ID } from "@d-type/id.type";

import { IBasePersistenceRepository } from "@domain/common/interfaces/repositories/base.persistence.repository.type";

export const PROVIDER_PERSISTENCE_REPOSITORY =
  "PROVIDER_PERSISTENCE_REPOSITORY";

export interface IProviderPersistenceRepository
  extends IBasePersistenceRepository<IProvider> {
  getByProviderId(providerId: string): Promise<IProvider | null>;

  getByAppletNodeId(id: ID): Promise<IProvider>;
}
