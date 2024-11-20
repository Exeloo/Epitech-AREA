import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DataSource } from "typeorm";

import { databaseConfig } from "~/config/database.config";

@Module({
  imports: [
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      useFactory: () => databaseConfig,
    }),
    TypeOrmModule.forFeature([

    ]),
  ],
  providers: [
    {
      provide: DataSource,
      useFactory: () => new DataSource(databaseConfig).initialize(),
    },
  ],
  exports: [

  ],
})
export class TypeormModule {}
