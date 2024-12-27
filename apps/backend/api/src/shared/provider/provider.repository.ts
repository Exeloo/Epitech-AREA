import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { AxiosRequestConfig } from "axios";

import { HttpRepository } from "@domain/common/repositories/http.repository";
import { IManifest } from "@domain/provider/manifest/types/manifest.type";

@Injectable()
export class ProviderRepository extends HttpRepository("PROVIDER") {
  private readonly defaultOptions: AxiosRequestConfig;

  constructor(httpService: HttpService) {
    super(httpService);
    this.defaultOptions = {};
  }

  async getManifest(host: string, key: string): Promise<IManifest> {
    return this.get(`${host}/manifest`, {
      headers: {
        "api-key": key,
      },
    });
  }
}
