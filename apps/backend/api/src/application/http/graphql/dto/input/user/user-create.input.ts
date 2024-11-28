import { Field, InputType } from "@nestjs/graphql";
import { IsEmail, IsNotEmpty, IsOptional, IsString } from "class-validator";

import { IUserCreateInput } from "@domain/user/dto/user.input.type";

@InputType({ description: "Input type to create user" })
export class UserCreateInput implements IUserCreateInput {
  @IsNotEmpty()
  @IsEmail()
  @Field(() => String, {
    description: "Email of the user to create",
  })
  email: string;

  @IsString()
  @Field(() => String, {
    description: "Password of the user to create (optional)",
    nullable: true,
  })
  password: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "Username of the user to create",
  })
  username: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "First name of the user to create",
  })
  firstName: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "Last name of the user to create",
  })
  lastName: string;

  @IsOptional()
  @IsString()
  @Field(() => String, {
    description: "Pronoun of the user to create",
    nullable: true,
  })
  pronoun: string | null;

  @IsOptional()
  @IsString()
  @Field(() => String, {
    description: "Description of the user to create",
    nullable: true,
  })
  description: string | null;
}
