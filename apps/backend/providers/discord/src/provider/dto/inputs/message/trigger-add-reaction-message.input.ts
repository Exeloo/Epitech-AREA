import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class TriggerAddReactionMessageInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "message_id",
    description: "The message id",
  })
  emoji_id: Snowflake;
}
