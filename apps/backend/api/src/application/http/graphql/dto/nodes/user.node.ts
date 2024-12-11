import { Field, Int, ObjectType } from "@nestjs/graphql";

import { ID } from "@d-type/id.type";

import { IExposedUser } from "@domain/user/types/user.type";

@ObjectType({
  description: "User",
})
export class User implements IExposedUser {
  @Field(() => Int, {
    description: "ID of the user",
  })
  id: ID;

  @Field(() => String, {
    description: "Email of the user",
  })
  email: string;

  @Field(() => String, {
    description: "Username of the user",
  })
  username: string;

  @Field(() => String, {
    description: "First name of the user",
  })
  firstName: string;

  @Field(() => String, {
    description: "Last name of the user",
  })
  lastName: string;

  @Field(() => String, {
    description: "Pronoun of the user",
    nullable: true,
  })
  pronoun: string | null;

  @Field(() => String, {
    description: "Profile picture of the user",
    nullable: true,
  })
  picture: string | null;

  @Field(() => String, {
    description: "Description of the user",
    nullable: true,
  })
  description: string | null;
}
