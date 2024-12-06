import { Field, ObjectType } from "@nestjs/graphql";

@ObjectType({
  description: "Provider Manifest",
})
export class ProviderManifest {
  @Field(() => String, {
    description: "Name of the provider",
  })
  name: string;

  @Field(() => String, {
    description: "Description of the provider",
  })
  description: string;

  @Field(() => String, {
    description: "Image that describe the provider",
  })
  img: string;
}
