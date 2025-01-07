import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

import { EmojiNode } from "~/provider/dto/nodes/emoji.node";
import { GuildMemberNode } from "~/provider/dto/nodes/guild-member.node";

import { Snowflake } from "../../types/snowflake.type";

@ManifestType()
export class AddReactionMessageResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  channel_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  message_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: GuildMemberNode,
  })
  member: GuildMemberNode;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: EmojiNode,
  })
  emoji: EmojiNode;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  message_author_id: Snowflake;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  burst: boolean;
}
