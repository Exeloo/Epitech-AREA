import { Injectable } from "@nestjs/common";

import { getManifest } from "./common/manifest/functions/get-manifest";

@Injectable()
export class AppService {
  async getManifest(): Promise<any> {
    return getManifest();
  }
}
