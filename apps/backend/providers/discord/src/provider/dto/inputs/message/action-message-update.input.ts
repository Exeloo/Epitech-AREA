import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class ActionMessageUpdateInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Message id",
    description: "The message id",
  })
  id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Channel id",
    description: "The channel id",
  })
  channel_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Message content",
    description: "The content of the message",
  })
  content: string;
}
