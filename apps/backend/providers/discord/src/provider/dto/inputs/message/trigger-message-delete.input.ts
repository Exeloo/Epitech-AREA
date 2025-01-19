import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class TriggerMessageDeleteInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Channel id",
    description: "The channel id",
  })
  channel_id: Snowflake;
}
