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
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/discord-mark-white.svg?alt=media&token=3e70a756-fdb6-437a-9219-51e8c97d059a",
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
