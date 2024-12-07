import { Field, Int, ObjectType } from "@nestjs/graphql";

import { ID } from "@d-type/id.type";

import { ProviderVisibility } from "@domain/provider/enums/provider-visibility.enum";
import { IExposedProvider } from "@domain/provider/types/provider.type";

@ObjectType({
  description: "Provider",
})
export class Provider implements IExposedProvider {
  @Field(() => Int, {
    description: "ID of the provider",
  })
  id: ID;

  @Field(() => ProviderVisibility, {
    description: "Visibility of the provider",
  })
  visibility: ProviderVisibility;

  @Field(() => String, {
    description: "Manifest of the provider",
  })
  manifest: any;
}
