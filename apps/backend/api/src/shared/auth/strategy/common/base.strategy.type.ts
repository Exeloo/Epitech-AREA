import { IUser } from "@domain/user/dto/user.type";

export interface IAuthStrategy<T> {
  authenticate(input: T): Promise<IUser>;
}
