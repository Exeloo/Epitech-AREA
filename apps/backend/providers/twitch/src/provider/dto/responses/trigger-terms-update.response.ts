import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerTermsChangeEventResponse {
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
  moderator_user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  moderator_user_login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  moderator_user_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  action: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  from_automod: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.STRING,
    },
  })
  terms: string[];
}