import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "../provider.repository.type";
import { IProviderService, PROVIDER_SERVICE } from "../provider.service.type";
import { IExposedManifest, IManifest } from "./types/manifest.type";

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

  async getExposedByProviderId(id: ID): Promise<IExposedManifest> {
    const manifest = await this.getByProviderId(id);
    return {
      actions: manifest.actions.map((action) => ({
        ...action,
        input: JSON.stringify(action.input),
        output: JSON.stringify(action.output),
      })),
      triggers: manifest.triggers.map((trigger) => ({
        ...trigger,
        input: JSON.stringify(trigger.input),
        output: JSON.stringify(trigger.output),
      })),
    };
  }
}
