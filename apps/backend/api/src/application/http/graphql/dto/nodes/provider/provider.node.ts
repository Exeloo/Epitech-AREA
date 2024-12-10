import { Field, Int, ObjectType } from "@nestjs/graphql";

import { ID } from "@d-type/id.type";

import { ProviderVisibility } from "@domain/provider/enums/provider-visibility.enum";
import { IExposedManifest } from "@domain/provider/manifest/types/manifest.type";
import { IExposedProvider } from "@domain/provider/types/provider.type";

import { ProviderManifest } from "~/application/http/graphql/dto/nodes/provider/provider-manifest.node";

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

  @Field(() => ProviderManifest, {
    description: "Manifest of the provider",
  })
  manifest: IExposedManifest;
}
