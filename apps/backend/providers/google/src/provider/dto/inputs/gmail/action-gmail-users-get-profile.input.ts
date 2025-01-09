import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionGmailUsersGetProfileInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_id: string;
}
