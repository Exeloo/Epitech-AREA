import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "cron",
  name: "Twitch",
  description: "Provider to use the Twitch API",
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/cron.png?alt=media&token=db39711d-1471-42f1-bd17-6173df7e025d",
  color: "#666261",
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
