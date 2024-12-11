import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "../provider.repository.type";
import { IProviderService, PROVIDER_SERVICE } from "../provider.service.type";
import { IManifest } from "./types/manifest.type";

@Injectable()
export class ManifestService {
  constructor(
    @Inject(PROVIDER_PERSISTENCE_REPOSITORY)
    private readonly providerPRepository: IProviderPersistenceRepository,
    @Inject(PROVIDER_SERVICE)
    private readonly providerService: IProviderService,
  ) {}

  async getByProviderId(id: ID): Promise<IManifest> {
    const provider = await this.providerPRepository.getById(id);
    return this.providerService.getManifest(provider);
  }
}
