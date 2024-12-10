import { Field, InputType } from "@nestjs/graphql";
import { IsNotEmpty, IsString } from "class-validator";

import { IAppletSubscribeInput } from "@domain/applet/types/applet.input.type";

@InputType({ description: "Input type to subscribe to an applet" })
export class AppletSubscribeInput implements IAppletSubscribeInput {
  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "Name that the user give to the applet",
  })
  name: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "ID of the channel to listen messages",
  })
  channelIdInput: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "ID of the guild to listen messages",
  })
  guildIdInput: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "Message to write when the trigger is called",
  })
  message: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "ID of the channel to write the message",
  })
  channelIdOutput: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "ID of the guild to write the message",
  })
  guildIdOutput: string;
}
