import { Injectable } from "@nestjs/common";
import { DataSource, FindOptionsRelations } from "typeorm";

import { IUser } from "@domain/user/dto/user.type";
import { IUserPersistenceRepository } from "@domain/user/user.repository.type";

import { UserEntity } from "~/shared/persistence/typeorm/entities/user.entity";

import { BaseRepository } from "../common/repositories/base.repository";
import { UserTransformer } from "../transformers/user.transformer";

const DEFAULTS_RELATIONS: FindOptionsRelations<UserEntity> = {};

@Injectable()
export class UserRepository
  extends BaseRepository<UserEntity, IUser>
  implements IUserPersistenceRepository
{
  constructor(dataSource: DataSource) {
    super(UserEntity, dataSource.createEntityManager());
    this.transformer = UserTransformer;
    this.relations = DEFAULTS_RELATIONS;
  }

  async getByEmail(email: string): Promise<IUser | null> {
    return this.transformer.persistenceToDomain(
      await this.findOne({
        where: { email },
        relations: this.relations,
      }),
    );
  }
}
