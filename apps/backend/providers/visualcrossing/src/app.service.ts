import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "visualcrossing",
  name: "VisualCrossing",
  description: "Provider to use the VisualCrossing API",
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/image-visualcrossing.png?alt=media&token=8f55ae1d-057e-477d-840b-232c299d9de2",
  color: "#1195d",
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
