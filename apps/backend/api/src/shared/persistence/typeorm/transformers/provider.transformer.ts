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
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      deletedAt: entity.deletedAt,
    };
  }

  _domainToPersistence(element: IProvider): ProviderEntity {
    return {
      id: element.id,
      name: element.name,
      createdAt: element.createdAt,
      updatedAt: element.updatedAt,
      deletedAt: element.deletedAt,
    };
  }
}

export const ProviderTransformer: ITransformer<ProviderEntity, IProvider> =
  new BaseProviderTransformer();
