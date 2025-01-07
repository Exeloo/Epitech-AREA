import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerMessageDeleteResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  broadcaster_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  broadcaster_user_login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  broadcaster_user_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  target_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  target_user_login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  target_user_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  message_id: string;
}
