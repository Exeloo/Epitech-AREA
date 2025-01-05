import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "twitch",
  name: "Twitch",
  description: "Provider to use the Twitch API",
  img: "",
  color: "#6441a5",
  oauth: {
    type: ManifestOAuthEnum.TOKEN,
  },
};

@Injectable()
export class AppService {
  async getManifest(): Promise<any> {
    return generateManifest(APP_BASE_MANIFEST);
  }
}
