import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerTermsUpdateInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "broadcaster id",
    description: "The ID of the broadcaster where the terms were update.",
  })
  broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "moderator id",
    description: "The ID of the moderator where the terms were update.",
  })
  moderator_user_id: string;
}
