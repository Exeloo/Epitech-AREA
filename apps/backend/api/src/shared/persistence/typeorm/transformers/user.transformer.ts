import { IUser } from "@domain/user/dto/user.type";

import { BaseTransformer } from "../common/transformers/base.transformer";
import { ITransformer } from "../common/transformers/transformer.type";
import { UserEntity } from "../entities/user.entity";

class BaseUserTransformer
  extends BaseTransformer<UserEntity, IUser>
  implements ITransformer<UserEntity, IUser>
{
  _persistenceToDomain(entity: UserEntity): IUser {
    return {
      id: entity.id,
      email: entity.email,
      password: entity.password,
      username: entity.username,
      firstName: entity.firstName,
      lastName: entity.lastName,
      pronoun: entity.pronoun,
      picture: entity.picture,
      description: entity.description,
      lastConnection: entity.lastConnection,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      deletedAt: entity.deletedAt,
    };
  }

  _domainToPersistence(element: IUser): UserEntity {
    return {
      id: element.id,
      email: element.email,
      password: element.password,
      username: element.username,
      firstName: element.firstName,
      lastName: element.lastName,
      pronoun: element.pronoun,
      picture: element.picture,
      description: element.description,
      lastConnection: element.lastConnection,
      createdAt: element.createdAt,
      updatedAt: element.updatedAt,
      deletedAt: element.deletedAt,
    };
  }
}

export const UserTransformer: ITransformer<UserEntity, IUser> =
  new BaseUserTransformer();
