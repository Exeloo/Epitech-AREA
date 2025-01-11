import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

import { AuthService } from "~/provider/shared/auth/auth.service";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "trackergg",
  name: "Tracker.gg",
  description: "Provider to use the Tracker.gg API",
  img: "",
  color: "#ffffff",
  oauth: {
    type: ManifestOAuthEnum.TOKEN,
  },
};

@Injectable()
export class AppService {
  constructor(private readonly authService: AuthService) {}

  async getManifest(): Promise<any> {
    return generateManifest(APP_BASE_MANIFEST);
  }
}
