import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { AxiosRequestConfig } from "axios";

import { ObjectLiteral } from "@type/object.type";

import { ID } from "@d-type/id.type";

import { InternalException } from "@exception";

import { HttpRepository } from "@domain/common/repositories/http.repository";
import { IManifest } from "@domain/provider/manifest/types/manifest.type";
import { IProviderOAuthState } from "@domain/provider/types/provider-oauth-state.type";

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

  async registerTrigger(
    host: string,
    key: string,
    body: { baseId: ID; userId: ID; actionId: string; input: object },
  ): Promise<void> {
    return this.post(`${host}/triggers`, body, {
      headers: {
        "api-key": key,
      },
    });
  }

  async runAction(
    host: string,
    key: string,
    body: { name: string; data: object },
  ): Promise<object> {
    let res: { message: any; data: any };
    try {
      res = await this.post(`${host}/actions`, body, {
        headers: {
          "api-key": key,
        },
      });
    } catch (e) {
      throw new InternalException(31, {
        cause: e,
      });
    }
    if (res.message !== "success")
      throw new InternalException(32, {
        cause: new Error(`Failed to run action (res message : ${res.message})`),
      });
    return res.data;
  }

  async getOAuthRedirect(
    host: string,
    apiKey: string,
    body: { state: string },
  ): Promise<{ baseUrl: string }> {
    let res: any;
    try {
      res = await this.post(`${host}/oauth/redirect`, body, {
        headers: {
          "api-key": apiKey,
        },
      });
    } catch (e) {
      throw new InternalException(41, {
        cause: e,
      });
    }
    return res;
  }

  async runOAuth(
    host: string,
    apiKey: string,
    body: ObjectLiteral,
  ): Promise<void> {
    let res: any;
    try {
      res = await this.post(`${host}/oauth`, body, {
        headers: {
          "api-key": apiKey,
        },
      });
    } catch (e) {
      throw new InternalException(43, {
        cause: e,
      });
    }
    return res;
  }

  getOAuthState(
    host: string,
    apiKey: string,
    userId: ID,
  ): Promise<IProviderOAuthState> {
    return this.get(`${host}/oauth/state/${userId}`, {
      headers: {
        "api-key": apiKey,
      },
    });
  }
}
