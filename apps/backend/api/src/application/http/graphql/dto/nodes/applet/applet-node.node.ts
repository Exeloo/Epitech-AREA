import { Field, Int, ObjectType } from "@nestjs/graphql";
import GraphQLJSON from "graphql-type-json";

import { ID } from "@d-type/id.type";

import { AppletNodeType } from "@domain/applet/node/enums/applet-node.type";
import { IExposedAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IExposedProvider } from "@domain/provider/types/provider.type";

import { Provider } from "../provider/provider.node";

@ObjectType({
  description: "AppletNode",
})
export class AppletNode implements IExposedAppletNode {
  @Field(() => Int, {
    description: "ID of the applet node",
  })
  id: ID;

  @Field(() => String, {
    description: "Action ID of the applet node provide by the provider",
  })
  actionId: string;

  @Field(() => AppletNodeType, {
    description: "Action type of the applet node provide by the provider",
  })
  actionType: AppletNodeType;

  @Field(() => GraphQLJSON, {
    description: "Input of the user for the applet node",
  })
  input: object;

  @Field(() => Provider, {
    description: "Provider that provide the action",
  })
  provider: IExposedProvider;

  @Field(() => [AppletNode], {
    description: "Nodes that is called previous",
  })
  previous: IExposedAppletNode[];

  @Field(() => [AppletNode], {
    description: "Nodes that is called after",
  })
  next: IExposedAppletNode[];
}
