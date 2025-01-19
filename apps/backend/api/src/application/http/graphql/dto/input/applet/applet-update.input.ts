import { Field, InputType, Int } from "@nestjs/graphql";
import { IsNotEmpty, IsObject, IsOptional, IsString } from "class-validator";
import GraphQLJSON from "graphql-type-json";

import { ID } from "@d-type/id.type";

import {
  IAppletInput,
  IAppletNodeInput,
} from "@domain/applet/types/applet.input.type";

@InputType({ description: "Node input type to update to an applet" })
export class AppletNodeUpdateInput implements IAppletNodeInput {
  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "Id of the action that is provide by the provider",
  })
  actionId: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => Int, {
    description: "Id of the provider of the action",
  })
  providerId: ID;

  @IsNotEmpty()
  @IsObject()
  @Field(() => GraphQLJSON, {
    description: "Input of the action",
  })
  input: object;

  @Field(() => [AppletNodeUpdateInput], {
    description: "Next nodes of the applet",
  })
  next: IAppletNodeInput[];
}

@InputType({ description: "Input type to update to an applet" })
export class AppletUpdateInput implements IAppletInput {
  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "Name that the user give to the applet",
  })
  name: string;

  @IsOptional()
  @IsString()
  @Field(() => String, {
    description: "Description that the user give to the applet",
    nullable: true,
  })
  description: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => [AppletNodeUpdateInput], {
    description: "Name that the user give to the applet",
  })
  triggerNodes: IAppletNodeInput[];
}
