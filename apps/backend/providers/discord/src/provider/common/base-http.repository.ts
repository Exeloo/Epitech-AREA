import { HttpService } from "@nestjs/axios";
import { HttpException, Logger } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { AxiosRequestConfig } from "axios";
import { firstValueFrom } from "rxjs";

export abstract class BaseHttpRepository {
  private readonly defaultConfig: AxiosRequestConfig;
  protected readonly logger = new Logger(
    `Http Repository (${this.constructor.name})`,
  );

  protected constructor(
    private readonly httpService: HttpService,
    private readonly configService: ConfigService,
  ) {
    this.defaultConfig = {
      headers: {
        Authorization: `Bot ${this.configService.getOrThrow("DISCORD_TOKEN")}`,
      },
      baseURL: this.configService.getOrThrow("PROVIDER_BASE_API_URL"),
    };
  }

  async get<T>(path: string, options?: AxiosRequestConfig): Promise<T> {
    const result = await firstValueFrom(
      this.httpService.get(path, {
        ...this.defaultConfig,
        ...options,
      }),
    );
    if (result.status !== 200)
      throw new HttpException("Unauthorized", result.status, {
        cause: new Error(`Unauthorized : ${result.data}`),
      });
    this.logger.log(
      `${this.constructor.name}.get: path ('${path}') successfully fetched`,
    );
    return result.data;
  }

  async post<T>(
    path: string,
    data: any,
    options?: AxiosRequestConfig,
  ): Promise<T> {
    const result = await firstValueFrom(
      this.httpService.post(path, data, {
        ...this.defaultConfig,
        ...options,
      }),
    );
    if (result.status !== 200)
      throw new HttpException("Unauthorized", result.status, {
        cause: new Error(`Unauthorized : ${result.data}`),
      });
    this.logger.log(
      `${this.constructor.name}.post: path ('${path}') successfully fetched`,
    );
    return result.data;
  }

  async put<T>(
    path: string,
    data: any,
    options?: AxiosRequestConfig,
  ): Promise<T> {
    const result = await firstValueFrom(
      this.httpService.put(path, data, {
        ...this.defaultConfig,
        ...options,
      }),
    );
    if (result.status !== 200)
      throw new HttpException("Unauthorized", result.status, {
        cause: new Error(`Unauthorized : ${result.data}`),
      });
    this.logger.log(
      `${this.constructor.name}.put: path ('${path}') successfully fetched`,
    );
    return result.data;
  }

  async patch<T>(
    path: string,
    data: any,
    options?: AxiosRequestConfig,
  ): Promise<T> {
    const result = await firstValueFrom(
      this.httpService.patch(path, data, {
        ...this.defaultConfig,
        ...options,
      }),
    );
    if (result.status !== 200)
      throw new HttpException("Unauthorized", result.status, {
        cause: new Error(`Unauthorized : ${result.data}`),
      });
    this.logger.log(
      `${this.constructor.name}.patch: path ('${path}') successfully fetched`,
    );
    return result.data;
  }

  async delete<T>(path: string, options?: AxiosRequestConfig): Promise<T> {
    const result = await firstValueFrom(
      this.httpService.delete(path, {
        ...this.defaultConfig,
        ...options,
      }),
    );
    if (result.status !== 200)
      throw new HttpException("Unauthorized", result.status, {
        cause: new Error(`Unauthorized : ${result.data}`),
      });
    this.logger.log(
      `${this.constructor.name}.delete: path ('${path}') successfully fetched`,
    );
    return result.data;
  }
}
