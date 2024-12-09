import { Inject } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "@domain/provider/provider.repository.type";
import {
  IProviderCreateInput,
  IProviderInput,
  IProviderUpdateInput,
} from "@domain/provider/types/provider.input.type";
import { IProvider } from "@domain/provider/types/provider.type";

export class ProviderService {
  constructor(
    @Inject(PROVIDER_PERSISTENCE_REPOSITORY)
    private readonly providerPRepository: IProviderPersistenceRepository,
  ) {}

  getById(id: ID): Promise<IProvider> {
    return this.providerPRepository.getById(id);
  }

  async createProvider(input: IProviderCreateInput): Promise<IProvider> {
    const currProvider = await this.providerPRepository.getByProviderId(
      input.providerId,
    );
    if (currProvider) {
      throw Error(); // @todo Error Provider Already exist
    }
    return this.create({
      ...input,
    });
  }

  private create(input: IProviderInput): Promise<IProvider> {
    return this.providerPRepository.createEntity(input);
  }

  private update(id: ID, input: IProviderUpdateInput): Promise<IProvider> {
    return this.providerPRepository.updateEntity(id, input);
  }
}
