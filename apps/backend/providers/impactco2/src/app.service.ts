import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "impactco2",
  name: "ImpactCO2",
  description: "Provider to use the ImpactCO2 API",
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/logo-ImpactCO2.png?alt=media&token=507c5bc1-525e-4e82-87b0-a8cecddb8976",
  color: "#32bfb8",
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
