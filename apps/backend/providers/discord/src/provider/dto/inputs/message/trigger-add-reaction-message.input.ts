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
    name: "Emoji id",
    description: "The emoji id",
  })
  emoji_id: Snowflake;
}
