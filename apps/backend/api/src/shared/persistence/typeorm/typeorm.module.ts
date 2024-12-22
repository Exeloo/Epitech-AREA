import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DataSource } from "typeorm";

import { APPLET_PERSISTENCE_REPOSITORY } from "@domain/applet/applet.repository.type";
import { APPLET_NODE_PERSISTENCE_REPOSITORY } from "@domain/applet/node/applet-node.repository.type";
import { PROVIDER_PERSISTENCE_REPOSITORY } from "@domain/provider/provider.repository.type";
import { USER_PERSISTENCE_REPOSITORY } from "@domain/user/user.repository.type";

import { databaseConfig } from "~/config/database.config";

import { AppletNodeRelationEntity } from "./entities/applet-node-relations.entity";
import { AppletNodeEntity } from "./entities/applet-node.entity";
import { AppletEntity } from "./entities/applet.entity";
import { ProviderEntity } from "./entities/provider.entity";
import { UserEntity } from "./entities/user.entity";
import { AppletNodeRepository } from "./repositories/applet-node.repository";
import { AppletRepository } from "./repositories/applet.repository";
import { ProviderRepository } from "./repositories/provider.repository";
import { UserRepository } from "./repositories/user.repository";

@Module({
  imports: [
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      useFactory: () => databaseConfig,
    }),
    TypeOrmModule.forFeature([
      AppletEntity,
      AppletNodeEntity,
      AppletNodeRelationEntity,
      ProviderEntity,
      UserEntity,
    ]),
  ],
  providers: [
    {
      provide: DataSource,
      useFactory: () => new DataSource(databaseConfig).initialize(),
    },
    {
      provide: APPLET_PERSISTENCE_REPOSITORY,
      useClass: AppletRepository,
    },
    {
      provide: APPLET_NODE_PERSISTENCE_REPOSITORY,
      useClass: AppletNodeRepository,
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
  exports: [
    APPLET_PERSISTENCE_REPOSITORY,
    APPLET_NODE_PERSISTENCE_REPOSITORY,
    PROVIDER_PERSISTENCE_REPOSITORY,
    USER_PERSISTENCE_REPOSITORY,
  ],
})
export class TypeormModule {}
