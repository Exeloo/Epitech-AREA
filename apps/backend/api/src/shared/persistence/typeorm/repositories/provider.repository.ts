import { Injectable } from "@nestjs/common";
import { DataSource, FindOptionsRelations } from "typeorm";

import { IProviderPersistenceRepository } from "@domain/provider/provider.repository.type";
import { IProvider } from "@domain/provider/types/provider.type";

import { BaseRepository } from "../common/repositories/base.repository";
import { ProviderEntity } from "../entities/provider.entity";
import { ProviderTransformer } from "../transformers/provider.transformer";

const DEFAULTS_RELATIONS: FindOptionsRelations<ProviderEntity> = {};

@Injectable()
export class ProviderRepository
  extends BaseRepository<ProviderEntity, IProvider>
  implements IProviderPersistenceRepository
{
  constructor(dataSource: DataSource) {
    super(ProviderEntity, dataSource.createEntityManager());
    this.transformer = ProviderTransformer;
    this.relations = DEFAULTS_RELATIONS;
  }

  async getByProviderId(providerId: string): Promise<IProvider | null> {
    return this.transformer.persistenceToDomain(
      await this.findOne({
        where: { providerId },
        relations: this.relations,
      }),
    );
  }
}
