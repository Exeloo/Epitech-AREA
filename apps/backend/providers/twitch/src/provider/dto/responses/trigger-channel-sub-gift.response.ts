import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ChannelSubscriptionGiftEventResponse {
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
    type: ManifestPropertyEnum.NUMBER,
  })
  total: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  tier: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  cumulative_total: number | null;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_anonymous: boolean;
}
