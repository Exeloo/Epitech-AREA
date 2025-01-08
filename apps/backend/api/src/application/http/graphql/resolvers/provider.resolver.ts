import { UseGuards } from "@nestjs/common";
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
import { IExposedManifest } from "@domain/provider/manifest/types/manifest.type";
import { ProviderService } from "@domain/provider/provider.service";
import { IProviderOAuthState } from "@domain/provider/types/provider-oauth-state.type";
import { IProviderCreateInput } from "@domain/provider/types/provider.input.type";
import { IExposedProvider } from "@domain/provider/types/provider.type";
import { IUser } from "@domain/user/types/user.type";

import { GqlCurrentUser } from "../common/decorators/graphql-current-user.decorator";
import { GqlAuthGuard } from "../common/guards/gql-auth.guard";
import { ProviderCreateInput } from "../dto/input/provider/provider-create.input";
import { ProviderManifest } from "../dto/nodes/provider/provider-manifest.node";
import { Provider } from "../dto/nodes/provider/provider.node";
import { ProviderOAuthStateResponse } from "../dto/response/provider/provider-oauth-state.response";

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
@UseGuards(GqlAuthGuard)
export class ProviderResolver {
  constructor(
    private readonly providerService: ProviderService,
    private readonly manifestService: ManifestService,
  ) {}

  @ResolveField(() => ProviderManifest, {
    description: "Provider Manifest with all actions and reactions",
  })
  manifest(provider: IExposedProvider): Promise<IExposedManifest> {
    return this.manifestService.getExposedByProviderId(provider.id);
  }

  @Query(() => [Provider], { description: "Get all providers" })
  async getAllProviders(): Promise<IExposedProvider[]> {
    return this.providerService.getAll();
  }

  @Query(() => Provider, { description: "Get provider by id" })
  async getProviderById(
    @Args("id", { type: () => Int }) id: ID,
  ): Promise<IExposedProvider> {
    return this.providerService.getById(id);
  }

  @Query(() => ProviderOAuthStateResponse, {
    description: "Get provider oauth state for the current user",
  })
  async getProviderOAuthState(
    @GqlCurrentUser() user: IUser,
    @Args("id", { type: () => Int }) id: ID,
  ): Promise<IProviderOAuthState> {
    return this.providerService.getProviderOAuthState(id, user);
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
