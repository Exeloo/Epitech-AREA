import { Injectable } from "@nestjs/common";

import { HttpRepository } from "@domain/common/repositories/http.repository";
import { IManifest } from "@domain/provider/manifest/types/manifest.type";

@Injectable()
export class ProviderRepository extends HttpRepository("PROVIDER") {
  async getManifest(host: string): Promise<IManifest> {
    return this.get(`${host}/manifest`);
  }
}
