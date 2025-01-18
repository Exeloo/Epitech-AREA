import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class ActionMessageCreateInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "channel_id",
    description: "The channel id",
  })
  channel_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "content",
    description: "The content of the message",
  })
  content: string;
}
