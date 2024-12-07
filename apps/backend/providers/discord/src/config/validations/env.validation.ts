import { plainToInstance } from "class-transformer";
import {
  IsEnum,
  IsInt,
  IsNotEmpty,
  IsPositive,
  IsString,
  validateSync,
} from "class-validator";

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
  @IsInt()
  @IsPositive()
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
  @IsString()
  APP_DOMAINS: string;

  @IsNotEmpty()
  @IsInt()
  THROTTLE_TTL: number;

  @IsNotEmpty()
  @IsInt()
  THROTTLE_LIMIT: number;

  // * Tests

  @IsNotEmpty()
  @IsString()
  TEST_DATABASE_USERNAME: string;

  @IsNotEmpty()
  @IsString()
  TEST_DATABASE_PASSWORD: string;

  @IsNotEmpty()
  @IsString()
  TEST_DATABASE_DB: string;
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
