import { Field, InputType } from "@nestjs/graphql";
import { IsEmail, IsNotEmpty, IsString } from "class-validator";

import { IAuthPasswordInput } from "@domain/auth/types/password.auth.type";

@InputType({ description: "Input type for auth with password strategy" })
export class AuthPasswordInput implements IAuthPasswordInput {
  @IsNotEmpty()
  @IsEmail()
  @Field(() => String, { description: "Email address to auth with" })
  email: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, { description: "Password to auth with" })
  password: string;
}
