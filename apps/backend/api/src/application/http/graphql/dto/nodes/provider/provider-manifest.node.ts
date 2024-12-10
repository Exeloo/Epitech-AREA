import { Field, ObjectType } from "@nestjs/graphql";
import GraphQLJSON from "graphql-type-json";

import {
  IManifestAction,
  IManifestField,
  IManifestTrigger,
} from "@domain/provider/manifest/types/manifest.type";

@ObjectType({
  description: "Trigger Provider Manifest",
})
export class ProviderManifestTrigger implements IManifestTrigger {
  @Field(() => String, {
    description: "ID of the trigger",
  })
  id: string;

  @Field(() => String, {
    description: "Name of the trigger",
  })
  name: string;

  @Field(() => String, {
    description: "Description of the trigger",
  })
  description: string;

  @Field(() => String, {
    description: "Image that describe the trigger",
  })
  img: string;

  @Field(() => GraphQLJSON, {
    description: "Input of the trigger",
  })
  input: IManifestField;

  @Field(() => GraphQLJSON, {
    description: "Output of the trigger",
  })
  output: IManifestField;
}

@ObjectType({
  description: "Action Provider Manifest",
})
export class ProviderManifestAction implements IManifestAction {
  @Field(() => String, {
    description: "ID of the action",
  })
  id: string;

  @Field(() => String, {
    description: "Name of the action",
  })
  name: string;

  @Field(() => String, {
    description: "Description of the action",
  })
  description: string;

  @Field(() => String, {
    description: "Image that describe the action",
  })
  img: string;

  @Field(() => GraphQLJSON, {
    description: "Input of the action",
  })
  input: IManifestField;

  @Field(() => GraphQLJSON, {
    description: "Output of the action",
  })
  output: IManifestField;
}

@ObjectType({
  description: "Provider Manifest",
})
export class ProviderManifest /*implements IExposedManifest*/ {
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

  @Field(() => [ProviderManifestTrigger], {
    description: "Triggers of the provider",
  })
  triggers: IManifestTrigger[];

  @Field(() => [ProviderManifestAction], {
    description: "Actions of the provider",
  })
  actions: IManifestAction[];
}
