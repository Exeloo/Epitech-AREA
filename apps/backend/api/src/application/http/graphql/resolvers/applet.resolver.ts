import { Args, Int, Mutation, Query, Resolver } from "@nestjs/graphql";

import { ID } from "@d-type/id.type";

import { AppletService } from "@domain/applet/applet.service";
import { IAppletSubscribeInput } from "@domain/applet/types/applet.input.type";
import { IExposedApplet } from "@domain/applet/types/applet.type";
import { IUser } from "@domain/user/types/user.type";

import { AppletSubscribeInput } from "~/application/http/graphql/dto/input/applet/applet-subscribe.input";
import { GQLCurrentUser } from "~/shared/auth/decorators/current-user/graphql-current-user.decorator";

import { Applet } from "../dto/nodes/applet/applet.node";

@Resolver(Applet)
export class AppletResolver {
  constructor(private readonly appletService: AppletService) {}

  @Query(() => [Applet], { description: "Get all applets" })
  async getAllApplets(
    @GQLCurrentUser() user: IUser,
  ): Promise<IExposedApplet[]> {
    throw Error("Not implemented");
  }

  @Query(() => Applet, { description: "Get applet by id" })
  async getAppletById(
    @GQLCurrentUser() user: IUser,
    @Args("id", { type: () => Int }) id: ID,
  ): Promise<IExposedApplet> {
    throw Error("Not implemented");
  }

  @Mutation(() => Applet, {
    description: "Mutation used to subscribe to an applet",
  })
  subscribeToProvider(
    @GQLCurrentUser() user: IUser,
    @Args("data", { type: () => AppletSubscribeInput })
    data: IAppletSubscribeInput,
  ): Promise<IExposedApplet> {
    throw Error("Not implemented");
  }
}
