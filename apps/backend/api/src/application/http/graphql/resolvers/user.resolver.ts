import { Resolver } from "@nestjs/graphql";

import { UserService } from "@domain/user/user.service";

import { User } from "../dto/nodes/user.node";

@Resolver(User)
export class UserResolver {
  constructor(private readonly userService: UserService) {}

  // @Query(() => User, { description: "Get the connected user" })
  // async getMe(@GQLCurrentUser() user: IUser): Promise<IExposedUser> {
  //   return user;
  // }

  // @Mutation(() => User, {
  //   description: "Mutation used to create a user as admin",
  // })
  // createUser(
  //   @Args("data", { type: () => UserCreateInput }) data: UserCreateInput,
  // ): Promise<IExposedUser> {
  //   return this.userService.createUser(data);
  // }

  // @Mutation(() => User, {
  //   description: "Mutation used to register yourself",
  // })
  // register(
  //   @Args("data", { type: () => UserRegisterInput }) data: UserRegisterInput,
  // ): Promise<IExposedUser> {
  //   return this.userService.registerUser(data);
  // }
}
