import { UseGuards } from "@nestjs/common";
import {
  Args,
  Query,
  ResolveField,
  Resolver,
  registerEnumType,
} from "@nestjs/graphql";

import { ID } from "@d-type/id.type";

import { AppletNodeService } from "@domain/applet/node/applet-node.service";
import { AppletNodeType } from "@domain/applet/node/enums/applet-node.type";
import { IExposedAppletNode } from "@domain/applet/node/types/applet-node.type";
import { ProviderService } from "@domain/provider/provider.service";
import { IExposedProvider } from "@domain/provider/types/provider.type";

import { GqlAuthGuard } from "~/application/http/graphql/common/guards/gql-auth.guard";
import { AppletNode } from "~/application/http/graphql/dto/nodes/applet/applet-node.node";
import { Provider } from "~/application/http/graphql/dto/nodes/provider/provider.node";

registerEnumType(AppletNodeType, {
  name: "AppletNodeType",
  description: "Type of the applet node",
  valuesMap: {
    [AppletNodeType.TRIGGER]: {
      description: "Node that is trigger by an external event",
    },
    [AppletNodeType.ACTION]: {
      description: "Node that is call when a trigger node is triggered",
    },
  },
});

@Resolver(AppletNode)
@UseGuards(GqlAuthGuard)
export class AppletNodeResolver {
  constructor(
    private readonly appletNodeService: AppletNodeService,
    private readonly providerService: ProviderService,
  ) {}

  @ResolveField(() => Provider, {
    description: "Provider that provide the action",
  })
  provider(appletNode: IExposedAppletNode): Promise<IExposedProvider> {
    return this.providerService.getByAppletNodeId(appletNode.id);
  }

  @ResolveField(() => [AppletNode], {
    description: "Nodes that is called previous",
  })
  previous(appletNode: IExposedAppletNode): Promise<IExposedAppletNode[]> {
    return this.appletNodeService.getPreviousByAppletNodeId(appletNode.id);
  }

  @ResolveField(() => [AppletNode], {
    description: "Nodes that is called after",
  })
  next(appletNode: IExposedAppletNode): Promise<IExposedAppletNode[]> {
    return this.appletNodeService.getNextByAppletNodeId(appletNode.id);
  }

  @Query(() => AppletNode, {
    description: "Query used to get an applet node",
  })
  getAppletNodeById(@Args("id") id: ID): Promise<IExposedAppletNode> {
    return this.appletNodeService.getById(id);
  }
}
