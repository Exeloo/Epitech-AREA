import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";

import { DomainModule } from "@domain/domain.module";

import { validate } from "./config/validations/env.validation";

@Module({
  imports: [
    ConfigModule.forRoot({
      validate,
    }),
    DomainModule,
  ],
})
export class AppModule {}
