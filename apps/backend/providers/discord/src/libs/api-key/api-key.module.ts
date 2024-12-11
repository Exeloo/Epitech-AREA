import { Module } from "@nestjs/common";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DataSource } from "typeorm";

import { databaseConfig } from "../../config/database.config";
import { ApiKey } from "./api-key.entity";
import { ApiKeyService } from "./api-key.service";

@Module({
  imports: [TypeOrmModule.forFeature([ApiKey])],
  providers: [
    {
      provide: DataSource,
      useFactory: () => new DataSource(databaseConfig).initialize(),
    },
    ApiKeyService,
  ],
  exports: [ApiKeyService, TypeOrmModule],
})
export class ApiKeyModule {}
