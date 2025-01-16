import { Field, ObjectType } from "@nestjs/graphql";

import { IProviderOAuthState } from "@domain/provider/types/provider-oauth-state.type";

@ObjectType({ description: "Response type for provider oauth state" })
export class ProviderOAuthStateResponse implements IProviderOAuthState {
  @Field(() => Boolean, {
    description:
      "Field to know if the user is authenticated to the provider (true if no authentication is require)",
  })
  authenticated: boolean;

  @Field(() => String, {
    description: "Redirect uri for the user to authenticate if needed",
    nullable: true,
  })
  redirectUri: string | null;
}
