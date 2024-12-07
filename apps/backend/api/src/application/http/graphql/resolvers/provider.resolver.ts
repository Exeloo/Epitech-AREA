import { Args, Mutation, Resolver, registerEnumType } from "@nestjs/graphql";

import { ProviderVisibility } from "@domain/provider/enums/provider-visibility.enum";
import { ProviderService } from "@domain/provider/provider.service";
import { IExposedProvider } from "@domain/provider/types/provider.type";

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
  constructor(private readonly providerService: ProviderService) {}

  @Mutation(() => Provider, {
    description: "Mutation used to create a provider as admin",
  })
  createProvider(
    @Args("data", { type: () => ProviderCreateInput })
    data: ProviderCreateInput,
  ): Promise<IExposedProvider> {
    return this.providerService.createProvider(data);
  }
}
