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
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/logo-discord.png?alt=media&token=03cc32ef-9907-4b8b-a7f5-aef05fa4ac4c",
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
