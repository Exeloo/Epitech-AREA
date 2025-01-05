import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class ActionMessageCreateInput {
  // * Params
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
