import { Logger } from "@nestjs/common";
import {
  EntityManager,
  EntityTarget,
  FindOneOptions,
  FindOptionsRelations,
  FindOptionsWhere,
  ObjectLiteral,
  Repository,
} from "typeorm";

import { DeepPartial } from "@type/nullable.type";

import { ID } from "@d-type/id.type";

import { BadInputException, InternalException } from "@exception";

import { IIdentifiable } from "@domain/common/interfaces/models/identifiable.type";
import { IBasePersistenceRepository } from "@domain/common/interfaces/repositories/base.persistence.repository.type";

import { DefaultTransformer } from "../transformers/default.transformer";
import { ITransformer } from "../transformers/transformer.type";

export abstract class BaseRepository<E extends ObjectLiteral & IIdentifiable, I>
  extends Repository<E>
  implements IBasePersistenceRepository<I>
{
  public logger: Logger;
  public transformer: ITransformer<E, I>;
  public relations: FindOptionsRelations<E>;

  protected constructor(target: EntityTarget<E>, manager: EntityManager) {
    super(target, manager);
    this.transformer = new DefaultTransformer<E, I>();
    this.logger = new Logger(`TYPEORM (${BaseRepository.name})`);
  }

  async getById(id: ID): Promise<I> {
    let entity: E;
    try {
      entity = await this.findOne({
        relations: this.relations,
        where: { id },
      } as FindOneOptions<E>);
    } catch (e) {
      throw new InternalException(16, {
        cause: e,
      });
    }
    if (!entity)
      throw new BadInputException("BAD_INPUT", "Unkown entity", {
        cause: new Error(`Unkown entity getting by id (${id})`),
        trace: 15,
      });

    this.logger.log(
      `${this.constructor.name}.getById: entity (${id}) successfully found`,
    );

    return this.transformer.persistenceToDomain(entity);
  }

  async getByProperties(properties: FindOptionsWhere<E>): Promise<I> {
    let entity: E;
    try {
      entity = await this.findOne({
        relations: this.relations,
        where: properties,
      });
    } catch (e) {
      throw new InternalException(18, {
        cause: e,
      });
    }
    if (!entity)
      throw new BadInputException("BAD_INPUT", "Unkown entity", {
        cause: new Error(`Unkown entity getting by properties (${properties})`),
        trace: 17,
      });

    this.logger.log(
      `${this.constructor.name}.getByProperties: entity (${entity.id}) successfully found`,
    );

    return this.transformer.persistenceToDomain(entity);
  }

  async getAllByProperties(properties: FindOptionsWhere<E>): Promise<I[]> {
    let entities: E[];
    try {
      entities = await this.find({
        relations: this.relations,
        where: properties,
      });
    } catch (e) {
      throw new InternalException(18, {
        cause: e,
      });
    }

    this.logger.log(
      `${this.constructor.name}.getAllByProperties: entities successfully fetched`,
    );

    return this.transformer.persistenceToDomains(entities);
  }

  async getAll(): Promise<I[]> {
    let entities: E[];
    try {
      entities = await this.find({
        relations: this.relations,
      });
    } catch (e) {
      throw new InternalException(19, {
        cause: e,
      });
    }
    this.logger.log(
      `${this.constructor.name}.getAll: entities successfully fetched`,
    );

    return this.transformer.persistenceToDomains(entities);
  }

  async createEntity(model: DeepPartial<I>): Promise<I> {
    let id: ID | undefined = undefined;

    try {
      const entity = await this.save(
        this.transformer.domainToPersistence(model),
      );
      id = entity.id;
    } catch (e) {
      throw new InternalException(20, {
        cause: e,
      });
    }

    this.logger.log(
      `${this.constructor.name}.createEntity: entity (${id}) successfully created`,
    );

    return this.getById(id);
  }

  async updateEntity(id: ID, model: DeepPartial<I>): Promise<I> {
    try {
      await this.update(id, this.transformer.domainToPersistence(model));
    } catch (e) {
      throw new InternalException(21, {
        cause: e,
      });
    }

    this.logger.log(
      `${this.constructor.name}.updateEntity: entity (${id}) successfully updated`,
    );

    return this.getById(id);
  }

  async deleteEntity(id: ID, hardDelete: boolean = false): Promise<I> {
    let entity: E;
    try {
      entity = await this.findOne({
        relations: this.relations,
        where: { id },
      } as FindOneOptions<E>);
    } catch (e) {
      throw new InternalException(23, {
        cause: e,
      });
    }

    if (!entity)
      throw new InternalException(24, {
        cause: new Error(
          `Error while trying to delete entity (${id}), does not exist`,
        ),
      });

    try {
      if (
        hardDelete ||
        !Object.prototype.hasOwnProperty.call(entity, "deletedAt")
      ) {
        await this.delete(id);
      } else {
        await this.softDelete(id);
      }
    } catch {
      throw new InternalException(27, {
        cause: new Error(`Error while trying to delete entity (${id})`),
      });
    }

    this.logger.log(
      `${this.constructor.name}.deleteEntity: entity (${id}) successfully deleted`,
    );

    return this.transformer.persistenceToDomain(entity);
  }
}
