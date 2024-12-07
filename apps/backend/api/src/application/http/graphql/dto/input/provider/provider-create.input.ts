import { Field, InputType } from "@nestjs/graphql";
import { IsEnum, IsNotEmpty, IsString } from "class-validator";

import { ProviderVisibility } from "@domain/provider/enums/provider-visibility.enum";
import { IProviderCreateInput } from "@domain/provider/types/provider.input.type";

@InputType({ description: "Input type to create provider" })
export class ProviderCreateInput implements IProviderCreateInput {
  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "Foreign id of the provider to create",
  })
  providerId: string;

  @IsNotEmpty()
  @IsString()
  @Field(() => String, {
    description: "Host of the provider to create",
  })
  host: string;

  @IsNotEmpty()
  @IsEnum(ProviderVisibility)
  @Field(() => ProviderVisibility, {
    description: "Visibility of the provider to create",
  })
  visibility: ProviderVisibility;
}
