import { Injectable } from "@nestjs/common";
import { DataSource, FindOptionsRelations } from "typeorm";

import { DeepPartial } from "@type/nullable.type";

import { ID } from "@d-type/id.type";

import { AsyncArrayUtils } from "@utils/async-array.utils";

import { IAppletNodePersistenceRepository } from "@domain/applet/node/applet-node.repository.type";
import { AppletNodeType } from "@domain/applet/node/enums/applet-node.type";
import { IAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IAppletNodeInput } from "@domain/applet/types/applet.input.type";

import { AppletNodeRelationRepository } from "~/shared/persistence/typeorm/repositories/applet-node-relations.repository";

import { BaseRepository } from "../common/repositories/base.repository";
import { AppletNodeEntity } from "../entities/applet-node.entity";
import { AppletNodeTransformer } from "../transformers/applet-node.transformer";

const DEFAULTS_RELATIONS: FindOptionsRelations<AppletNodeEntity> = {};

@Injectable()
export class AppletNodeRepository
  extends BaseRepository<AppletNodeEntity, IAppletNode>
  implements IAppletNodePersistenceRepository
{
  constructor(
    dataSource: DataSource,
    private readonly relationsRepository: AppletNodeRelationRepository,
  ) {
    super(AppletNodeEntity, dataSource.createEntityManager());
    this.transformer = AppletNodeTransformer;
    this.relations = DEFAULTS_RELATIONS;
  }

  async getPreviousById(id: ID): Promise<IAppletNode[]> {
    return this.transformer.persistenceToDomains(
      await this.createQueryBuilder("node")
        .innerJoin("node.next", "next")
        .where("next.second_id = :id", { id })
        .getMany(),
    );
  }

  async getNextById(id: ID): Promise<IAppletNode[]> {
    return this.transformer.persistenceToDomains(
      await this.createQueryBuilder("node")
        .innerJoin("node.previous", "previous")
        .where("previous.first_id = :id", { id })
        .getMany(),
    );
  }

  saveNodes(
    nodes: DeepPartial<IAppletNodeInput[]>,
    appletId: ID,
    isTrigger = true,
  ): Promise<IAppletNode[]> {
    return AsyncArrayUtils.map(nodes, async (node): Promise<IAppletNode> => {
      const res = await this.createEntity({
        actionId: node.actionId,
        input: node.input,
        actionType: isTrigger ? AppletNodeType.TRIGGER : AppletNodeType.ACTION,
        provider: {
          id: node.providerId,
        },
        applet: { id: appletId },
      });
      if (!node.next) return res;
      const next = await AsyncArrayUtils.map(
        await this.saveNodes(node.next, appletId, false),
        async (el): Promise<IAppletNode> => {
          await this.relationsRepository.save({
            firstId: res.id,
            secondId: el.id,
          });
          return {
            ...el,
            previous: [res],
          };
        },
      );
      return {
        ...res,
        next,
      };
    });
  }

  async getAllTriggersByProviderId(id: ID): Promise<IAppletNode[]> {
    return this.transformer.persistenceToDomains(
      await this.createQueryBuilder("node")
        .where("node.provider_id = :id", { id })
        .andWhere("node.action_type = :type", { type: AppletNodeType.TRIGGER })
        .innerJoinAndSelect("node.applet", "applet")
        .innerJoinAndSelect("applet.owner", "owner")
        .getMany(),
    );
  }

  async getAllTriggersByAppletId(id: ID): Promise<IAppletNode[]> {
    return this.transformer.persistenceToDomains(
      await this.createQueryBuilder("node")
        .where("node.applet_id = :id", { id })
        .andWhere("node.action_type = :type", { type: AppletNodeType.TRIGGER })
        .getMany(),
    );
  }
}
