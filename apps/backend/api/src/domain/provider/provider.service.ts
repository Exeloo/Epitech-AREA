import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import { BadInputException } from "@exception";

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

@Injectable()
export class ProviderService {
  constructor(
    @Inject(PROVIDER_PERSISTENCE_REPOSITORY)
    private readonly providerPRepository: IProviderPersistenceRepository,
  ) {}

  getById(id: ID): Promise<IProvider> {
    return this.providerPRepository.getById(id);
  }

  getAll(): Promise<IProvider[]> {
    return this.providerPRepository.getAll();
  }

  async createProvider(input: IProviderCreateInput): Promise<IProvider> {
    const currProvider = await this.providerPRepository.getByProviderId(
      input.providerId,
    );
    if (currProvider) {
      throw new BadInputException("BAD_INPUT", "Provider already exist", {
        cause: new Error(
          `Provider with providerId (${input.providerId}) already exist`,
        ),
        trace: 27,
      });
    }
    return this.create({
      ...input,
    });
  }

  getByAppletNodeId(id: ID): Promise<IProvider> {
    return this.providerPRepository.getByAppletNodeId(id);
  }

  private create(input: IProviderInput): Promise<IProvider> {
    return this.providerPRepository.createEntity(input);
  }

  private update(id: ID, input: IProviderUpdateInput): Promise<IProvider> {
    return this.providerPRepository.updateEntity(id, input);
  }
}
