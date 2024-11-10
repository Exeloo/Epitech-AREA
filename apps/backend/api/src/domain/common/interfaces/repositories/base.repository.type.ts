import { DeepPartial } from "@type/nullable.type";

export interface IBaseRepository<T> {
  getById(id: number): Promise<T>;

  getAll(): Promise<T[]>;

  createEntity(input: DeepPartial<T>): Promise<T>;

  updateEntity(id: number, input: DeepPartial<T>): Promise<T>;

  deleteEntity(id: number, hardDelete?: boolean): Promise<T>;
}
