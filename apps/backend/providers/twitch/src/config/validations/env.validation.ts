import {plainToInstance} from "class-transformer";
import {IsEnum, IsInt, IsNotEmpty, IsNumberString, IsPositive, IsString, IsUrl, validateSync,} from "class-validator";

export enum AppEnvEnum {
  LOCAL = "local",
  DEV = "dev",
  PREPROD = "preprod",
  PRODUCTION = "production",
}

export class EnvironmentVariables {
  @IsNotEmpty()
  @IsEnum(AppEnvEnum)
  APP_ENV: AppEnvEnum;

  @IsNotEmpty()
  @IsNumberString()
  APP_PORT: string;

  @IsNotEmpty()
  @IsString()
  DATABASE_HOST: string;

  @IsNotEmpty()
  @IsInt()
  @IsPositive()
  DATABASE_PORT: number;

  @IsNotEmpty()
  @IsString()
  DATABASE_USERNAME: string;

  @IsNotEmpty()
  @IsString()
  DATABASE_PASSWORD: string;

  @IsNotEmpty()
  @IsString()
  DATABASE_DB: string;

  @IsNotEmpty()
  @IsUrl({ require_tld: false })
  BASE_API_REST_URL: string;

  @IsNotEmpty()
  @IsUrl({ require_tld: false })
  PUBLIC_API_URL: string;

  @IsNotEmpty()
  @IsUrl({ require_tld: false, protocols: ["ws", "wss"] })
  BASE_API_WS_URL: string;

  @IsNotEmpty()
  @IsString()
  API_KEY: string;

  @IsNotEmpty()
  @IsUrl({ require_tld: false })
  PROVIDER_BASE_API_URL: string;

  @IsNotEmpty()
  @IsUrl({ require_tld: false, protocols: ["ws", "wss"] })
  PROVIDER_GATEWAY_URL: string;

  @IsNotEmpty()
  @IsString()
  APP_DOMAINS: string;

  @IsNotEmpty()
  @IsInt()
  THROTTLE_TTL: number;

  @IsNotEmpty()
  @IsInt()
  THROTTLE_LIMIT: number;

  @IsNotEmpty()
  @IsString()
  TWITCH_CLIENT_ID: string;

  @IsNotEmpty()
  @IsString()
  TWITCH_CLIENT_SECRET: string;
}

// Learn more: https://docs.nestjs.com/techniques/configuration#custom-validate-function
export function validate(config: Record<string, unknown>) {
  const validatedConfig = plainToInstance(EnvironmentVariables, config, {
    enableImplicitConversion: true,
  });
  const errors = validateSync(validatedConfig, {
    skipMissingProperties: false,
  });

  if (errors.length > 0) {
    throw new Error(errors.toString());
  }
  return validatedConfig;
}
