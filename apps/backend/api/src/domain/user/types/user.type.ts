import { IIdentifiable } from "@domain/common/interfaces/models/identifiable.type";
import { ISoftDeletable } from "@domain/common/interfaces/models/soft-deletable.type";
import { ITimestampable } from "@domain/common/interfaces/models/timestampable.type";

export interface IUser extends IIdentifiable, ITimestampable, ISoftDeletable {
  email: string;
  password: string;
  username: string;
  firstName: string;
  lastName: string;
  pronoun: string | null;
  picture: string | null;
  description: string | null;
  lastConnection: Date;
}

export type IExposedUser = Pick<
  IUser,
  | "id"
  | "email"
  | "username"
  | "firstName"
  | "lastName"
  | "pronoun"
  | "picture"
  | "description"
>;

export type IAuthenticateUser = Pick<IUser, "email"> &
  Partial<Pick<IUser, "firstName" | "lastName" | "username">>;
