import { Field, ObjectType } from "@nestjs/graphql";
import GraphQLJSON from "graphql-type-json";

import {
  IExposedManifest,
  IExposedManifestAction,
  IExposedManifestTrigger,
} from "@domain/provider/manifest/types/manifest.type";

@ObjectType({
  description: "Trigger Provider Manifest",
})
export class ProviderManifestTrigger implements IExposedManifestTrigger {
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

  @Field(() => String, {
    description: "Color of the trigger",
  })
  color: string;

  @Field(() => GraphQLJSON, {
    description: "Input of the trigger",
  })
  input: string;

  @Field(() => GraphQLJSON, {
    description: "Output of the trigger",
  })
  output: string;
}

@ObjectType({
  description: "Action Provider Manifest",
})
export class ProviderManifestAction implements IExposedManifestAction {
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

  @Field(() => String, {
    description: "Color of the action",
  })
  color: string;

  @Field(() => GraphQLJSON, {
    description: "Input of the action",
  })
  input: string;

  @Field(() => GraphQLJSON, {
    description: "Output of the action",
  })
  output: string;
}

@ObjectType({
  description: "Provider Manifest",
})
export class ProviderManifest implements IExposedManifest {
  @Field(() => [ProviderManifestTrigger], {
    description: "Triggers of the provider",
  })
  triggers: IExposedManifestTrigger[];

  @Field(() => [ProviderManifestAction], {
    description: "Actions of the provider",
  })
  actions: IExposedManifestAction[];
}
