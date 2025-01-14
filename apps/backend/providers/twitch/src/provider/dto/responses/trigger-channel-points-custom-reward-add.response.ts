import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class MaxPerStream {
  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_enabled: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  max: number;
}

@ManifestType()
export class MaxPerUserPerStream {
  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_enabled: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  max: number;
}

@ManifestType()
export class ChannelPointsCustomRewardAddEventResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: string;

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
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_enabled: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_paused: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_in_stock: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  title: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.INTEGER,
  })
  cost: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  prompt: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  is_user_input_required: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  should_redemptions_skip_request_queue: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: MaxPerStream,
  })
  max_per_stream: MaxPerStream;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: MaxPerUserPerStream,
  })
  max_per_user_per_stream: MaxPerUserPerStream;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  background_color: string;
}
