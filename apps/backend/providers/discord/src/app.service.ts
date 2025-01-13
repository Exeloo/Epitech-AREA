import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "discord",
  name: "Discord",
  description: "Provider to use the Discord API",
  img: "gs://area-444018.firebasestorage.app/discord-mark-white.svg",
  color: "#5865F2",
  oauth: {
    type: ManifestOAuthEnum.AUTHORIZATION,
  },
};

@Injectable()
export class AppService {
  async getManifest(): Promise<any> {
    return generateManifest(APP_BASE_MANIFEST);
  }
}
