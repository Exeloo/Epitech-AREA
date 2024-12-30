import { Injectable } from "@nestjs/common";
import { DataSource, Repository } from "typeorm";

import { AppletNodeRelationEntity } from "../entities/applet-node-relations.entity";

@Injectable()
export class AppletNodeRelationRepository extends Repository<AppletNodeRelationEntity> {
  constructor(dataSource: DataSource) {
    super(AppletNodeRelationEntity, dataSource.createEntityManager());
  }
}
