import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "trackergg",
  name: "Tracker.gg",
  description: "Provider to use the Tracker.gg API",
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/tracker.png?alt=media&token=17f81bdd-8a66-48ce-b1da-e2323b42f68e",
  color: "#18191c",
  oauth: {
    type: ManifestOAuthEnum.NONE,
  },
};

@Injectable()
export class AppService {
  async getManifest(): Promise<any> {
    return generateManifest(APP_BASE_MANIFEST);
  }
}
