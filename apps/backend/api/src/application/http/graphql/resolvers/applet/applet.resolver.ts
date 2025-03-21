import { UseGuards } from "@nestjs/common";
import {
  Args,
  Int,
  Mutation,
  Query,
  ResolveField,
  Resolver,
} from "@nestjs/graphql";

import { ID } from "@d-type/id.type";

import { AppletService } from "@domain/applet/applet.service";
import { AppletNodeService } from "@domain/applet/node/applet-node.service";
import { IExposedAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IAppletInput } from "@domain/applet/types/applet.input.type";
import { IExposedApplet } from "@domain/applet/types/applet.type";
import { IUser } from "@domain/user/types/user.type";

import { GqlAuthGuard } from "~/application/http/graphql/common/guards/gql-auth.guard";
import { AppletUpdateInput } from "~/application/http/graphql/dto/input/applet/applet-update.input";
import { AppletNode } from "~/application/http/graphql/dto/nodes/applet/applet-node.node";

import { GqlCurrentUser } from "../../common/decorators/graphql-current-user.decorator";
import { AppletCreateInput } from "../../dto/input/applet/applet-create.input";
import { Applet } from "../../dto/nodes/applet/applet.node";

@UseGuards(GqlAuthGuard)
@Resolver(Applet)
export class AppletResolver {
  constructor(
    private readonly appletService: AppletService,
    private readonly appletNodeService: AppletNodeService,
  ) {}

  @ResolveField(() => [AppletNode], {
    description: "Triggers of the applet",
  })
  triggerNodes(applet: IExposedApplet): Promise<IExposedAppletNode[]> {
    return this.appletNodeService.getExposedApplets(
      this.appletNodeService.getTriggersByAppletId(applet.id),
    );
  }

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
    description: "Mutation used to create an applet",
  })
  createApplet(
    @GqlCurrentUser() user: IUser,
    @Args("data", { type: () => AppletCreateInput })
    data: IAppletInput,
  ): Promise<IExposedApplet> {
    return this.appletService.create(user, data);
  }

  @Mutation(() => Applet, {
    description: "Mutation used to update an applet",
  })
  updateApplet(
    @GqlCurrentUser() user: IUser,
    @Args("id", { type: () => Int })
    id: ID,
    @Args("data", { type: () => AppletUpdateInput })
    data: IAppletInput,
  ): Promise<IExposedApplet> {
    return this.appletService.update(user, id, data);
  }

  @Mutation(() => Applet, {
    description: "Mutation used to delete an applet",
  })
  deleteApplet(
    @GqlCurrentUser() user: IUser,
    @Args("id", { type: () => Int })
    id: ID,
  ): Promise<IExposedApplet> {
    return this.appletService.delete(user, id);
  }
}
