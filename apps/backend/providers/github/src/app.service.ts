import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

import { AuthService } from "~/provider/shared/auth/auth.service";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "github",
  name: "Github",
  description: "Provider to use the Github API",
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/github-mark-white.png?alt=media&token=10460f52-6bc6-4edb-bbc2-f7e6fbfe8946",
  color: "#2b3137",
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

  getOAuthUrl(body: { state: string }): Promise<{ baseUrl: string }> {
    return this.authService.getOAuthUrl(body);
  }

  runOAuth(input: { code: string; state: string }): Promise<void> {
    return this.authService.runOAuth(input);
  }

  getOAuthState(userId: number): Promise<{ authenticated: boolean }> {
    return this.authService.getOAuthState(userId);
  }
}
