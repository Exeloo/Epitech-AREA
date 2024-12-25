import { IOAuthOptions } from "@domain/auth/types/oauth-options.type";
import { IAuthenticateUser } from "@domain/user/types/user.type";

export interface IOAuthAuthStrategy<T> {
  redirect(options?: IOAuthOptions): Promise<string>;
  validate(input: T): Promise<IAuthenticateUser>;
}
