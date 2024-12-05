import { registerType } from "../common/manifest/functions/register-type";
import { ManifestPropertyEnum } from "../common/manifest/manifest.property.enum";
import { IManifestType } from "../common/manifest/manifest.type";
import { IUser, UserType } from "./user.type";

export interface IMessage {
  id: string;
  channel_id: string;
  author: IUser;
  content: string;
  timestamp: string;
  edited_timestamp: string;
  tts: boolean;
  mention_everyone: boolean;
  mentions: IUser[];
}

export const MessageType: IManifestType = {
  id: {
    type: ManifestPropertyEnum.STRING,
  },
  channel_id: {
    type: ManifestPropertyEnum.STRING,
  },
  author: {
    type: ManifestPropertyEnum.OBJECT,
    properties: UserType,
  },
  content: {
    type: ManifestPropertyEnum.STRING,
  },
  timestamp: {
    type: ManifestPropertyEnum.STRING,
  },
  edited_timestamp: {
    type: ManifestPropertyEnum.STRING,
  },
  tts: {
    type: ManifestPropertyEnum.BOOLEAN,
  },
  mention_everyone: {
    type: ManifestPropertyEnum.BOOLEAN,
  },
  mentions: {
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: UserType,
    },
  },
};

registerType("message", MessageType);
