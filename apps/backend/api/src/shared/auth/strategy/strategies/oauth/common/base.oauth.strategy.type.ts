import { IAuthenticateUser } from "@domain/user/types/user.type";

export interface IOAuthAuthStrategy<T> {
  redirect(): Promise<string>;
  validate(input: T): Promise<IAuthenticateUser>;
}
