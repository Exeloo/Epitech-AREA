import { Args, Int, Mutation, Query, Resolver } from "@nestjs/graphql";

import { ID } from "@d-type/id.type";

import { AppletService } from "@domain/applet/applet.service";
import { IAppletCreateInput } from "@domain/applet/types/applet.input.type";
import { IExposedApplet } from "@domain/applet/types/applet.type";
import { IUser } from "@domain/user/types/user.type";

import { AppletCreateInput } from "~/application/http/graphql/dto/input/applet/applet-create.input";
import { GqlCurrentUser } from "~/shared/auth/decorators/current-user/graphql-current-user.decorator";

import { Applet } from "../../dto/nodes/applet/applet.node";

@Resolver(Applet)
export class AppletResolver {
  constructor(private readonly appletService: AppletService) {}

  @Query(() => [Applet], { description: "Get all applets" })
  async getAllApplets(
    @GqlCurrentUser() user: IUser,
  ): Promise<IExposedApplet[]> {
    return this.appletService.getAllWithOwner(user);
  }

  @Query(() => Applet, { description: "Get applet by id" })
  async getAppletById(
    @GqlCurrentUser() user: IUser,
    @Args("id", { type: () => Int }) id: ID,
  ): Promise<IExposedApplet> {
    return this.appletService.getByIdWithOwner(id, user);
  }

  @Mutation(() => Applet, {
    description: "Mutation used to create to an applet",
  })
  createApplet(
    @GqlCurrentUser() user: IUser,
    @Args("data", { type: () => AppletCreateInput })
    data: IAppletCreateInput,
  ): Promise<IExposedApplet> {
    throw Error(`Not implemented ${user}, ${data}`);
  }
}
