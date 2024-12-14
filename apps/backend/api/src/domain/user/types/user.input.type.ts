import { IUser } from "@domain/user/types/user.type";

export interface IUserInput extends Partial<IUser> {
  email: string;
  password: string;
  username: string;
  firstName: string;
  lastName: string;
  pronoun: string | null;
  picture: string | null;
  description: string | null;
}

export type IUserCreateInput = Pick<
  IUserInput,
  "email" | "username" | "firstName" | "lastName" | "pronoun" | "description"
> &
  Partial<IUserInput>;

export type IUserRegisterInput = Pick<
  IUserInput,
  "email" | "firstName" | "lastName"
> &
  Partial<IUserInput>;

export type IUserUpdateInput = Partial<
  Pick<
    IUserInput,
    "email" | "username" | "firstName" | "lastName" | "pronoun" | "description"
  >
>;
