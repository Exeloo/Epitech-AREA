import { Field, InputType, Int } from "@nestjs/graphql";
import { IsNotEmpty, IsObject, IsOptional, IsString } from "class-validator";
import GraphQLJSON from "graphql-type-json";

import { ID } from "@d-type/id.type";

import {
  IAppletCreateInput,
  IAppletNodeCreateInput,
} from "@domain/applet/types/applet.input.type";

@InputType({ description: "Node input type to create to an applet" })
export class AppletNodeCreateInput implements IAppletNodeCreateInput {
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

  @Field(() => [AppletNodeCreateInput], {
    description: "Next nodes of the applet",
  })
  next: IAppletNodeCreateInput[];
}

@InputType({ description: "Input type to create to an applet" })
export class AppletCreateInput implements IAppletCreateInput {
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
  @Field(() => [AppletNodeCreateInput], {
    description: "Name that the user give to the applet",
  })
  triggerNodes: IAppletNodeCreateInput[];
}
