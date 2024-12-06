import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DataSource } from "typeorm";

import { PROVIDER_PERSISTENCE_REPOSITORY } from "@domain/provider/provider.repository.type";
import { USER_PERSISTENCE_REPOSITORY } from "@domain/user/user.repository.type";

import { databaseConfig } from "~/config/database.config";
import { ProviderEntity } from "~/shared/persistence/typeorm/entities/provider.entity";
import { UserEntity } from "~/shared/persistence/typeorm/entities/user.entity";
import { ProviderRepository } from "~/shared/persistence/typeorm/repositories/provider.repository";
import { UserRepository } from "~/shared/persistence/typeorm/repositories/user.repository";

@Module({
  imports: [
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      useFactory: () => databaseConfig,
    }),
    TypeOrmModule.forFeature([ProviderEntity, UserEntity]),
  ],
  providers: [
    {
      provide: DataSource,
      useFactory: () => new DataSource(databaseConfig).initialize(),
    },
    {
      provide: PROVIDER_PERSISTENCE_REPOSITORY,
      useClass: ProviderRepository,
    },
    {
      provide: USER_PERSISTENCE_REPOSITORY,
      useClass: UserRepository,
    },
  ],
  exports: [PROVIDER_PERSISTENCE_REPOSITORY, USER_PERSISTENCE_REPOSITORY],
})
export class TypeormModule {}
