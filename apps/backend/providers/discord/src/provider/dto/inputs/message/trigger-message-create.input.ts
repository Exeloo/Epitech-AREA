import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class TriggerMessageCreateInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  channel_id: Snowflake;
}
