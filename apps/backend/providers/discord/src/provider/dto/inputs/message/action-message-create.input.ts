import { ManifestProperty, ManifestPropertyEnum } from "@lib/manifest";
import { ManifestType } from "@lib/manifest/decorators/type.decorator";

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
