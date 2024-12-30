export interface IAuthStrategy<I, R> {
  authenticate(input: I): Promise<R>;
}
