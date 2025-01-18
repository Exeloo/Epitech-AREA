import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class ActionMessageDeleteInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "id",
    description: "The message id",
  })
  id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "channel_id",
    description: "The channel id",
  })
  channel_id: Snowflake;
}
