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
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/image-riot.png?alt=media&token=e5651f4d-bc40-4e11-97c6-174c8755312f",
  color: "#d32f2e",
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
