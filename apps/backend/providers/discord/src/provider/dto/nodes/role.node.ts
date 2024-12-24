import { ManifestProperty, ManifestPropertyEnum } from "@lib/manifest";
import { ManifestType } from "@lib/manifest/decorators/type.decorator";

import { Snowflake } from "../../types/snowflake.type";

@ManifestType()
export class RoleNode {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  color: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  hoist: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.INTEGER,
  })
  position: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  permissions: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  managed: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  mentionable: boolean;
}
