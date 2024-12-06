import { Field, ObjectType } from "@nestjs/graphql";

import { IAuthToken } from "@domain/auth/types/token.auth.type";

@ObjectType({ description: "Response type for auth" })
export class AuthTokenResponse implements IAuthToken {
  @Field(() => String, {
    description: "Access token for the client to use to make others requests",
  })
  token: string;

  @Field(() => String, {
    description:
      "Refresh token for the client to use to refresh the access token when it is outdated",
  })
  refreshToken: string;

  @Field(() => Date, {
    description:
      "Access token expiration date in the time zone of the server (currently timezone of Paris)",
  })
  tokenExpiresAt: Date;
}
