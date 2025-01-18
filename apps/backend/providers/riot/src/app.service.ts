import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "riot",
  name: "Riot",
  description: "Provider to use the Riot API",
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/logo-riot.png?alt=media&token=b3d140d7-f656-403b-9750-18d6e3ed36d3",
  color: "#eb0029",
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
