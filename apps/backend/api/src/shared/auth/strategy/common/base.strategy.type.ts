import { IUser } from "@domain/user/types/user.type";

export interface IAuthStrategy<T> {
  authenticate(input: T): Promise<IUser>;
}
