import { Injectable } from "@nestjs/common";
import { DataSource, FindOptionsRelations } from "typeorm";

import { ID } from "@d-type/id.type";

import { IAppletPersistenceRepository } from "@domain/applet/applet.repository.type";
import { IApplet } from "@domain/applet/types/applet.type";

import { BaseRepository } from "../common/repositories/base.repository";
import { AppletEntity } from "../entities/applet.entity";
import { AppletTransformer } from "../transformers/applet.transformer";

const DEFAULTS_RELATIONS: FindOptionsRelations<AppletEntity> = {};

@Injectable()
export class AppletRepository
  extends BaseRepository<AppletEntity, IApplet>
  implements IAppletPersistenceRepository
{
  constructor(dataSource: DataSource) {
    super(AppletEntity, dataSource.createEntityManager());
    this.transformer = AppletTransformer;
    this.relations = DEFAULTS_RELATIONS;
  }

  async getAllWithOwner(userId: ID): Promise<IApplet[]> {
    return this.transformer.persistenceToDomains(
      await this.createQueryBuilder("applet")
        .where("applet.owner_id = :userId", { userId })
        .getMany(),
    );
  }

  async getByIdWithOwner(id: ID, userId: ID): Promise<IApplet> {
    return this.transformer.persistenceToDomain(
      await this.createQueryBuilder("applet")
        .where("applet.id = :id", { id })
        .andWhere("applet.owner_id = :userId", { userId })
        .getOneOrFail(),
    );
  }
}
