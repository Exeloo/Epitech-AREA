import { Injectable } from "@nestjs/common";
import { DataSource, FindOptionsRelations } from "typeorm";

import { ID } from "@d-type/id.type";

import { IAppletNodePersistenceRepository } from "@domain/applet/node/applet-node.repository.type";
import { IAppletNode } from "@domain/applet/node/types/applet-node.type";

import { BaseRepository } from "../common/repositories/base.repository";
import { AppletNodeEntity } from "../entities/applet-node.entity";
import { AppletNodeTransformer } from "../transformers/applet-node.transformer";

const DEFAULTS_RELATIONS: FindOptionsRelations<AppletNodeEntity> = {};

@Injectable()
export class AppletNodeRepository
  extends BaseRepository<AppletNodeEntity, IAppletNode>
  implements IAppletNodePersistenceRepository
{
  constructor(dataSource: DataSource) {
    super(AppletNodeEntity, dataSource.createEntityManager());
    this.transformer = AppletNodeTransformer;
    this.relations = DEFAULTS_RELATIONS;
  }

  async getPreviousById(id: ID): Promise<IAppletNode[]> {
    return this.transformer.persistenceToDomains(
      await this.createQueryBuilder("node")
        .innerJoin("node.next", "next")
        .where("next.secondId = :id", { id })
        .getMany(),
    );
  }

  async getNextById(id: ID): Promise<IAppletNode[]> {
    return this.transformer.persistenceToDomains(
      await this.createQueryBuilder("node")
        .innerJoin("node.previous", "previous")
        .where("next.firstId = :id", { id })
        .getMany(),
    );
  }
}
