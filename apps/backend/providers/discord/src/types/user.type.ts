import { registerType } from "../common/manifest/functions/register-type";
import { ManifestPropertyEnum } from "../common/manifest/manifest.property.enum";
import { IManifestType } from "../common/manifest/manifest.type";

export interface IUser {
  id: string;
  username: string;
  discriminator: string;
  global_name?: string;
  avatar?: string;
  bot?: boolean;
  system?: boolean;
  mfaEnabled?: boolean;
  banner?: string;
  accentColor?: string;
  locale?: string;
  verified?: boolean;
  email?: string;
  flags?: number;
  premiumType?: number;
  publicFlags?: number;
}

export const UserType: IManifestType = {
  id: {
    type: ManifestPropertyEnum.STRING,
  },
  username: {
    type: ManifestPropertyEnum.STRING,
  },
  discriminator: {
    type: ManifestPropertyEnum.STRING,
  },
  global_name: {
    type: ManifestPropertyEnum.STRING,
    optional: true,
  },
  avatar: {
    type: ManifestPropertyEnum.STRING,
    optional: true,
  },
  bot: {
    type: ManifestPropertyEnum.BOOLEAN,
    optional: true,
  },
  system: {
    type: ManifestPropertyEnum.BOOLEAN,
    optional: true,
  },
  mfaEnabled: {
    type: ManifestPropertyEnum.BOOLEAN,
    optional: true,
  },
  banner: {
    type: ManifestPropertyEnum.STRING,
    optional: true,
  },
  accentColor: {
    type: ManifestPropertyEnum.STRING,
    optional: true,
  },
  locale: {
    type: ManifestPropertyEnum.STRING,
    optional: true,
  },
  verified: {
    type: ManifestPropertyEnum.BOOLEAN,
    optional: true,
  },
  email: {
    type: ManifestPropertyEnum.STRING,
    optional: true,
  },
  flags: {
    type: ManifestPropertyEnum.INTEGER,
    optional: true,
  },
  premiumType: {
    type: ManifestPropertyEnum.INTEGER,
    optional: true,
  },
  publicFlags: {
    type: ManifestPropertyEnum.INTEGER,
    optional: true,
  },
};

registerType("user", UserType);
