import { IProvider } from "@domain/provider/types/provider.type";

import { BaseTransformer } from "../common/transformers/base.transformer";
import { ITransformer } from "../common/transformers/transformer.type";
import { ProviderEntity } from "../entities/provider.entity";

class BaseProviderTransformer
  extends BaseTransformer<ProviderEntity, IProvider>
  implements ITransformer<ProviderEntity, IProvider>
{
  _persistenceToDomain(entity: ProviderEntity): IProvider {
    return {
      id: entity.id,
      name: entity.name,
      description: entity.description,
      img: entity.img,
      color: entity.color,
      providerId: entity.providerId,
      host: entity.host,
      visibility: entity.visibility,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    };
  }

  _domainToPersistence(element: IProvider): ProviderEntity {
    return {
      id: element.id,
      name: element.name,
      description: element.description,
      img: element.img,
      color: element.color,
      providerId: element.providerId,
      host: element.host,
      visibility: element.visibility,
      createdAt: element.createdAt,
      updatedAt: element.updatedAt,
    };
  }
}

export const ProviderTransformer: ITransformer<ProviderEntity, IProvider> =
  new BaseProviderTransformer();
