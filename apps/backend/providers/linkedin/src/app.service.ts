import {Injectable} from "@nestjs/common";

import {generateManifest, IBaseManifest, ManifestOAuthEnum,} from "@lib/manifest";

import {AuthService} from "~/provider/shared/auth/auth.service";

const APP_BASE_MANIFEST: IBaseManifest = {
  id: "linkedin",
  name: "LinkedIn",
  description: "Provider to use the LinkedIn API",
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
