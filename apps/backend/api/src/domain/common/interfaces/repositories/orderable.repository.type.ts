export interface IOrderableRepository<T> {
  pushUp(id: number): Promise<T>;

  pushDown(id: number): Promise<T>;
}
