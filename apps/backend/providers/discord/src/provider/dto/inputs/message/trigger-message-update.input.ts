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
    name: "message_id",
    description: "The message id",
  })
  channel_id: Snowflake;
}
