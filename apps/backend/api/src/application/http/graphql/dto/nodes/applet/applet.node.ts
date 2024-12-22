import { Field, Int, ObjectType } from "@nestjs/graphql";

import { ID } from "@d-type/id.type";

import { IExposedAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IExposedApplet } from "@domain/applet/types/applet.type";

import { AppletNode } from "./applet-node.node";

@ObjectType({
  description: "Applet",
})
export class Applet implements IExposedApplet {
  @Field(() => Int, {
    description: "ID of the applet",
  })
  id: ID;

  @Field(() => String, {
    description: "Name of the applet",
  })
  name: string;

  @Field(() => String, {
    description: "Description of the applet",
    nullable: true,
  })
  description: string | null;

  @Field(() => [AppletNode], {
    description: "ID of the applet",
  })
  triggerNodes: IExposedAppletNode[];
}
