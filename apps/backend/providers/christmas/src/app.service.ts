import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "christmas",
  name: "Christmas",
  description: "Provider to use the Christmas API",
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/logo-christmas.png?alt=media&token=c322a17c-fe34-46ab-aa4e-2806ef7b1afb",
  color: "#036f3e",
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
