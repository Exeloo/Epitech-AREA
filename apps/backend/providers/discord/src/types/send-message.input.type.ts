import { registerType } from "../common/manifest/functions/register-type";
import { ManifestPropertyEnum } from "../common/manifest/manifest.property.enum";
import { IManifestType } from "../common/manifest/manifest.type";

export interface ISendMessageInput {
  message: string;
  channel_id: string;
  guild_id: string;
}

export const SendMessageInputType: IManifestType = {
  message: {
    type: ManifestPropertyEnum.STRING,
  },
  channel_id: {
    type: ManifestPropertyEnum.STRING,
  },
  guild_id: {
    type: ManifestPropertyEnum.STRING,
  },
};

registerType("send-message-input", SendMessageInputType);
