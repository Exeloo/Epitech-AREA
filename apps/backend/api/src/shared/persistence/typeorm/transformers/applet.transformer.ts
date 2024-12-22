import { IApplet } from "@domain/applet/types/applet.type";

import { AppletNodeTransformer } from "~/shared/persistence/typeorm/transformers/applet-node.transformer";
import { UserTransformer } from "~/shared/persistence/typeorm/transformers/user.transformer";

import { BaseTransformer } from "../common/transformers/base.transformer";
import { ITransformer } from "../common/transformers/transformer.type";
import { AppletEntity } from "../entities/applet.entity";

class BaseAppletTransformer
  extends BaseTransformer<AppletEntity, IApplet>
  implements ITransformer<AppletEntity, IApplet>
{
  _persistenceToDomain(entity: AppletEntity): IApplet {
    return {
      id: entity.id,
      name: entity.name,
      description: entity.description,
      owner: UserTransformer.persistenceToDomain(entity.owner),
      nodes: AppletNodeTransformer.persistenceToDomains(entity.nodes),
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    };
  }

  _domainToPersistence(element: IApplet): AppletEntity {
    return {
      id: element.id,
      name: element.name,
      description: element.description,
      owner: UserTransformer.domainToPersistence(element.owner),
      nodes: AppletNodeTransformer.domainToPersistences(element.nodes),
      createdAt: element.createdAt,
      updatedAt: element.updatedAt,
    };
  }
}

export const AppletTransformer: ITransformer<AppletEntity, IApplet> =
  new BaseAppletTransformer();
