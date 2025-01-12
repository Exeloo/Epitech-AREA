import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionActorSearchActorsInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Query",
    description: "Query to search",
  })
  query: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    name: "Limit",
    description: "Limit of user to call (between 1 and 100)",
  })
  limit: number;
}
