import { Field, InputType } from "@nestjs/graphql";
import { IsEmail, IsOptional, IsString } from "class-validator";

import { IUserCreateInput } from "@domain/user/types/user.input.type";

@InputType({ description: "Input type to update user" })
export class UserUpdateInput implements IUserCreateInput {
  @IsOptional()
  @IsEmail()
  @Field(() => String, {
    description: "Email of the user to update",
    nullable: true,
  })
  email: string;

  @IsOptional()
  @IsString()
  @Field(() => String, {
    description: "Username of the user to update",
    nullable: true,
  })
  username: string;

  @IsOptional()
  @IsString()
  @Field(() => String, {
    description: "First name of the user to update",
    nullable: true,
  })
  firstName: string;

  @IsOptional()
  @IsString()
  @Field(() => String, {
    description: "Last name of the user to update",
    nullable: true,
  })
  lastName: string;

  @IsOptional()
  @IsString()
  @Field(() => String, {
    description: "Pronoun of the user to update",
    nullable: true,
  })
  pronoun: string | null;

  @IsOptional()
  @IsString()
  @Field(() => String, {
    description: "Description of the user to update",
    nullable: true,
  })
  description: string | null;
}
