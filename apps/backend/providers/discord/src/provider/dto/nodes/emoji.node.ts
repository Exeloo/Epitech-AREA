import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { Snowflake } from "../../types/snowflake.type";

@ManifestType()
export class EmojiNode {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  animated: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  available: boolean;
}
