import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

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
