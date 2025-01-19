import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionUserGetProfileInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "User Id",
    description: "The user id",
  })
  user_id?: string;
}
