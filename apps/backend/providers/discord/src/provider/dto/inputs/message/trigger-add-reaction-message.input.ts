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
  })
  emoji_id: Snowflake;
}
