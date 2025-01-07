import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { RoleNode } from "./role.node";
import { UserNode } from "./user.node";

@ManifestType()
export class GuildMemberNode {
  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: UserNode,
  })
  user: UserNode;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  nick: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: RoleNode,
    },
  })
  roles: RoleNode[];
}
