import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ChannelBanEventResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_name: string;

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
  reason: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  banned_at: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  ends_at: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_permanent: boolean;
}
