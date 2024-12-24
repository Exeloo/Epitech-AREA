import { ManifestProperty, ManifestPropertyEnum } from "@lib/manifest";
import { ManifestType } from "@lib/manifest/decorators/type.decorator";

import { Snowflake } from "../../../types/snowflake.type";

@ManifestType()
export class TriggerMessageCreateInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  channel_id: Snowflake;
}
