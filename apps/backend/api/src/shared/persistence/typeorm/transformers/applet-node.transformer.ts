import { IAppletNode } from "@domain/applet/node/types/applet-node.type";

import { AppletTransformer } from "~/shared/persistence/typeorm/transformers/applet.transformer";
import { ProviderTransformer } from "~/shared/persistence/typeorm/transformers/provider.transformer";

import { BaseTransformer } from "../common/transformers/base.transformer";
import { ITransformer } from "../common/transformers/transformer.type";
import { AppletNodeEntity } from "../entities/applet-node.entity";

class BaseAppletNodeTransformer
  extends BaseTransformer<AppletNodeEntity, IAppletNode>
  implements ITransformer<AppletNodeEntity, IAppletNode>
{
  _persistenceToDomain(entity: AppletNodeEntity): IAppletNode {
    return {
      id: entity.id,
      provider: ProviderTransformer.persistenceToDomain(entity.provider),
      applet: AppletTransformer.persistenceToDomain(entity.applet),
      actionId: entity.actionId,
      actionType: entity.actionType,
      input: entity.input,
      previous: this.persistenceToDomains(entity.previous?.map((e) => e.first)),
      next: this.persistenceToDomains(entity.next?.map((e) => e.second)),
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    };
  }

  /**
   * Transform a domain type into a persistence entity
   * WARNING : This transformer does not transform nodes. They must be pushed on db on une separate way
   * @param element {IAppletNode} - Domain applet node type to transform
   * @return {AppletNodeEntity} - Persistence entity
   */
  _domainToPersistence(element: IAppletNode): AppletNodeEntity {
    return {
      id: element.id,
      provider: ProviderTransformer.domainToPersistence(element.provider),
      applet: AppletTransformer.domainToPersistence(element.applet),
      actionId: element.actionId,
      actionType: element.actionType,
      input: element.input,
      createdAt: element.createdAt,
      updatedAt: element.updatedAt,
    };
  }
}

export const AppletNodeTransformer: ITransformer<
  AppletNodeEntity,
  IAppletNode
> = new BaseAppletNodeTransformer();
