import {
  Args,
  Int,
  Mutation,
  Query,
  ResolveField,
  Resolver,
  registerEnumType,
} from "@nestjs/graphql";

import { ID } from "@d-type/id.type";

import { ProviderVisibility } from "@domain/provider/enums/provider-visibility.enum";
import { ManifestService } from "@domain/provider/manifest/manifest.service";
import { IManifest } from "@domain/provider/manifest/types/manifest.type";
import { ProviderService } from "@domain/provider/provider.service";
import { IProviderCreateInput } from "@domain/provider/types/provider.input.type";
import { IExposedProvider } from "@domain/provider/types/provider.type";
import { IUser } from "@domain/user/types/user.type";

import { ProviderManifest } from "~/application/http/graphql/dto/nodes/provider/provider-manifest.node";
import { GQLCurrentUser } from "~/shared/auth/decorators/current-user/graphql-current-user.decorator";

import { ProviderCreateInput } from "../dto/input/provider/provider-create.input";
import { Provider } from "../dto/nodes/provider/provider.node";

registerEnumType(ProviderVisibility, {
  name: "ProviderVisibility",
  description: "Visibility of the provider",
  valuesMap: {
    [ProviderVisibility.PUBLIC]: {
      description: "Public provider, visible to everyone",
    },
    [ProviderVisibility.PRIVATE]: {
      description: "Private provider, visible only to the owner",
    },
    [ProviderVisibility.UNLISTED]: {
      description:
        "Unlisted provider, visible only to the owner but can be used by everyone",
    },
  },
});

@Resolver(Provider)
export class ProviderResolver {
  constructor(
    private readonly providerService: ProviderService,
    private readonly manifestService: ManifestService,
  ) {}

  @ResolveField(() => ProviderManifest, {
    description: "Provider Manifest with all actions and reactions",
  })
  manifest(provider: IExposedProvider): Promise<IManifest> {
    return this.manifestService.getByProviderId(provider.id);
  }

  @Query(() => [Provider], { description: "Get all providers" })
  async getAllProviders(
    @GQLCurrentUser() user: IUser,
  ): Promise<IExposedProvider[]> {
    throw Error("Not implemented");
  }

  @Query(() => Provider, { description: "Get provider by id" })
  async getProviderById(
    @GQLCurrentUser() user: IUser,
    @Args("id", { type: () => Int }) id: ID,
  ): Promise<IExposedProvider> {
    throw Error("Not implemented");
  }

  @Mutation(() => Provider, {
    description: "Mutation used to create a provider as admin",
  })
  createProvider(
    @Args("data", { type: () => ProviderCreateInput })
    data: IProviderCreateInput,
  ): Promise<IExposedProvider> {
    return this.providerService.createProvider(data);
  }
}
