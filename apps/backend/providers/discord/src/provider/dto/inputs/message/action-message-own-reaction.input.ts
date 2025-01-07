import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class ActionMessageOwnReactionInput {
  // * Params
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  message_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  channel_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  emoji: Snowflake;
}
