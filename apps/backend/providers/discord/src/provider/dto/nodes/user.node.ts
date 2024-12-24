import { ManifestProperty, ManifestPropertyEnum } from "@lib/manifest";
import { ManifestType } from "@lib/manifest/decorators/type.decorator";

import { Snowflake } from "../../types/snowflake.type";

@ManifestType()
export class UserNode {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  username: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  discriminator: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  global_name?: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  avatar?: string;
}
