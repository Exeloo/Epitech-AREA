import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ChannelUpdateEventResponse {
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
  title: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  language: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  category_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  category_name: string;
}
