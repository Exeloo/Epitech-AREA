import { Field, Int, ObjectType } from "@nestjs/graphql";

import { ID } from "@d-type/id.type";

import { IExposedApplet } from "@domain/applet/types/applet.type";

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
}
