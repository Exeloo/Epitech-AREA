import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class ActionMessageUpdateInput {
  // * Params
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  channel_id: Snowflake;

  // * Body
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  content: string;
}
