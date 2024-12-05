import { registerType } from "../common/manifest/functions/register-type";
import { ManifestPropertyEnum } from "../common/manifest/manifest.property.enum";
import { IManifestType } from "../common/manifest/manifest.type";

export interface IMessageListenerInput {
  channel_id: string;
  guild_id: string;
}

export const MessageListenerInputType: IManifestType = {
  channel_id: {
    type: ManifestPropertyEnum.STRING,
  },
  guild_id: {
    type: ManifestPropertyEnum.STRING,
  },
};

registerType("message-listener-input", MessageListenerInputType);
