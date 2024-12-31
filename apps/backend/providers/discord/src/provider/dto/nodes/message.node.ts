import { ManifestProperty, ManifestPropertyEnum } from "@lib/manifest";
import { ManifestType } from "@lib/manifest/decorators/type.decorator";

import { Snowflake } from "../../types/snowflake.type";
import { RoleNode } from "./role.node";
import { UserNode } from "./user.node";

@ManifestType()
export class MessageNode {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  channel_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: UserNode,
  })
  author: UserNode;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  content: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  timestamp: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  tts: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  mention_everyone: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: UserNode,
    },
  })
  mentions: UserNode[];

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: RoleNode,
    },
  })
  mention_roles: RoleNode[];

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  pinned: boolean;
}
