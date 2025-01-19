import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class ActionMessageOwnReactionInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Message id",
    description: "The message id",
  })
  message_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Channel id",
    description: "The channel id",
  })
  channel_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "emoji",
    description: "The emoji",
  })
  emoji: Snowflake;
}
