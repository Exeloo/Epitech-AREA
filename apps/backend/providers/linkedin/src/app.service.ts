import { Injectable } from "@nestjs/common";

import {
  IBaseManifest,
  ManifestOAuthEnum,
  generateManifest,
} from "@lib/manifest";

import { AuthService } from "~/provider/shared/auth/auth.service";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "linkedin",
  name: "LinkedIn",
  description: "Provider to use the LinkedIn API",
  img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/logo-linkedin.png?alt=media&token=33c99d51-90ef-47d9-800d-3e01af0336dd",
  color: "#0b64c3",
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
