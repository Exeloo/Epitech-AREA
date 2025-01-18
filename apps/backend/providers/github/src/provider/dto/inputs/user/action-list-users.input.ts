import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionListUsersInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "user_id",
    description: "The ID of the user to list the users for (defaults to the authenticated user)",
  })
  user_id?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    optional: true,
    name: "since",
    description: "The ID of the last user that you've seen"
  })
  since?: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    optional: true,
    name: "per_page",
    description: "The number of items to return per page"
  })
  per_page?: number;
}
