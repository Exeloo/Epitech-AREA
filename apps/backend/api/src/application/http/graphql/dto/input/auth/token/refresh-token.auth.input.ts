import { Field, InputType } from "@nestjs/graphql";
import { IsNotEmpty, IsString } from "class-validator";

import { IAuthRefreshTokenInput } from "@domain/auth/dto/token.auth.type";

@InputType({ description: "Input type for refresh access token" })
export class AuthRefreshTokenInput implements IAuthRefreshTokenInput {
  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description:
      "Refresh token that was generated by api and store by the user along the outdated access token",
  })
  refreshToken: string;
}
