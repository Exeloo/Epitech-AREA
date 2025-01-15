import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ChannelModeratorAddEventResponse {
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
  user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_login: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_name: string;
}
