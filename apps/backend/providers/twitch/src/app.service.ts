import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

import { AuthService } from "~/provider/shared/auth/auth.service";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "twitch",
  name: "Twitch",
  description: "Provider to use the Twitch API",
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/logo-twitch.png?alt=media&token=ca648dd8-ed82-4782-9ec5-529e18fa9a49",
  color: "#6441a5",
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
