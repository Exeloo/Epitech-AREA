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
    name: "User ID",
    description: "LinkedIn profile of user ID",
  })
  user_id?: string;
}
