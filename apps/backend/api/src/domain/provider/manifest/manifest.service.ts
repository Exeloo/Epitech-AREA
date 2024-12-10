import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import { IManifest } from "@domain/provider/manifest/types/manifest.type";
import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "@domain/provider/provider.repository.type";

@Injectable()
export class ManifestService {
  constructor(
    @Inject(PROVIDER_PERSISTENCE_REPOSITORY)
    private readonly providerPRepository: IProviderPersistenceRepository,
  ) {}

  getByProviderId(id: ID): Promise<IManifest> {
    throw Error("Not implemented");
  }
}
