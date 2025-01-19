import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class TriggerMessageUpdateInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Channel id",
    description: "The Channel id",
  })
  channel_id: Snowflake;
}
