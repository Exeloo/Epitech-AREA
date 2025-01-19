import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

import { AuthService } from "~/provider/shared/auth/auth.service";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "patreon",
  name: "Patreon",
  description: "Provider to use the Patreon API",
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/logo-patreon.png?alt=media&token=4d2ae2f8-f2eb-4a9d-b164-af77631f4e1a",
  color: "#fe5900",
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
