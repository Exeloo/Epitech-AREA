import { HttpService } from "@nestjs/axios";
import { Logger } from "@nestjs/common";
import axios, { AxiosRequestConfig, AxiosResponse } from "axios";
import { firstValueFrom } from "rxjs";

import { InternalException } from "@exception";

export const HttpRepository = (module: string) => {
  class BaseHttpRepository {
    public logger: Logger;

    constructor(readonly httpService: HttpService) {
      this.logger = new Logger(`${module} (${this.constructor.name})`);
    }

    async get<T>(
      path: string,
      options?: Partial<AxiosRequestConfig>,
    ): Promise<T> {
      let result: AxiosResponse<any, any>;
      try {
        result = await axios.get(path, options);
      } catch (error) {
        throw new InternalException(11, {
          cause: error,
        });
      }
      if (result.status < 200 || result.status > 299)
        throw new InternalException(13, {
          cause: new Error(
            `Bad Status Code: ${result.status}, when trying to reach GET ${path}`,
          ),
        });

      this.logger.log(
        `${this.constructor.name}.get: path ('${path}') successfully fetched`,
      );
      return result.data;
    }

    async post<T>(
      path: string,
      body: any,
      options?: Partial<AxiosRequestConfig>,
    ): Promise<T> {
      let result: AxiosResponse<any, any>;
      try {
        result = await firstValueFrom(
          this.httpService.post(path, body, options),
        );
      } catch (error) {
        throw new InternalException(12, {
          cause: error,
        });
      }
      if (result.status < 200 || result.status > 299)
        throw new InternalException(14, {
          cause: new Error(
            `Bad Status Code: ${result.status}, when trying to reach POST ${path}`,
          ),
        });
      this.logger.log(
        `${this.constructor.name}.post: path ('${path}') successfully fetched`,
      );
      return result.data;
    }
  }
  return BaseHttpRepository;
};
