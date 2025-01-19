import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionGmailUsersGetProfileInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "User ID",
    description: "Gmail profile of user ID",
  })
  user_id: string;
}
