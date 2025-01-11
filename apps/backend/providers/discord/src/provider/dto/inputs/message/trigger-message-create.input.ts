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
    name: "Channel Id",
    description: "Id of the channel you want to read",
  })
  channel_id: Snowflake;
}
