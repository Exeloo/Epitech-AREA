import { Field, InputType } from "@nestjs/graphql";
import { IsEmail, IsNotEmpty, IsString } from "class-validator";

import { IUserRegisterInput } from "@domain/user/types/user.input.type";

@InputType({ description: "Input type to register a user" })
export class UserRegisterInput implements IUserRegisterInput {
  @IsNotEmpty()
  @IsEmail()
  @Field(() => String, {
    description: "Email of the user to register",
  })
  email: string;

  @IsString()
  @Field(() => String, {
    description: "Password of the user to register (optional)",
    nullable: true,
  })
  password?: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "First name of the user to register",
  })
  firstName: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "Last name of the user to register",
  })
  lastName: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "Username of the user to register",
  })
  username: string;
}
