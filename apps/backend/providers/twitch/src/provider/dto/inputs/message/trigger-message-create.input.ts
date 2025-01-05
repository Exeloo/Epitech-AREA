import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerMessageCreateInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_id: string;
}
