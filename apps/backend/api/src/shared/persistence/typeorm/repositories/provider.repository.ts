import { Injectable } from "@nestjs/common";
import { DataSource, FindOptionsRelations } from "typeorm";

import { BaseRepository } from "../common/repositories/base.repository";
import { ProviderTransformer } from "../transformers/provider.transformer";
import { ProviderEntity } from "~/shared/persistence/typeorm/entities/provider.entity";

const DEFAULTS_RELATIONS: FindOptionsRelations<ProviderEntity> = {};

@Injectable()
export class ProviderRepository
  extends BaseRepository<ProviderEntity, IProvider>
  implements IProviderRepository
{
  constructor(dataSource: DataSource) {
    super(ProviderEntity, dataSource.createEntityManager());
    this.transformer = ProviderTransformer;
    this.relations = DEFAULTS_RELATIONS;
  }

  getByName(name: string): Promise<IProvider | null> {
    return this.findOne({
      where: { name },
      relations: this.relations,
    });
  }
}
