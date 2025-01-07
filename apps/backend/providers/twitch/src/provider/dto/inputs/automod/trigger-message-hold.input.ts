import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerMessageHoldInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  moderator_user_id: string;
}
