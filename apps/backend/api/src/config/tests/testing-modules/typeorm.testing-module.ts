import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";
import { TypeOrmModule } from "@nestjs/typeorm";
import { DataSource } from "typeorm";

import { APPLET_PERSISTENCE_REPOSITORY } from "@domain/applet/applet.repository.type";
import { APPLET_NODE_PERSISTENCE_REPOSITORY } from "@domain/applet/node/applet-node.repository.type";
import { PROVIDER_PERSISTENCE_REPOSITORY } from "@domain/provider/provider.repository.type";
import { USER_PERSISTENCE_REPOSITORY } from "@domain/user/user.repository.type";

import { testDatabaseConfig } from "~/config/tests/database.test.config";
import { AppletNodeRelationRepository } from "~/shared/persistence/typeorm/repositories/applet-node-relations.repository";

import { AppletNodeRelationEntity } from "../../../shared/persistence/typeorm/entities/applet-node-relations.entity";
import { AppletNodeEntity } from "../../../shared/persistence/typeorm/entities/applet-node.entity";
import { AppletEntity } from "../../../shared/persistence/typeorm/entities/applet.entity";
import { ProviderEntity } from "../../../shared/persistence/typeorm/entities/provider.entity";
import { UserEntity } from "../../../shared/persistence/typeorm/entities/user.entity";
import { AppletNodeRepository } from "../../../shared/persistence/typeorm/repositories/applet-node.repository";
import { AppletRepository } from "../../../shared/persistence/typeorm/repositories/applet.repository";
import { ProviderRepository } from "../../../shared/persistence/typeorm/repositories/provider.repository";
import { UserRepository } from "../../../shared/persistence/typeorm/repositories/user.repository";

@Module({
  imports: [
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      useFactory: () => testDatabaseConfig,
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
      useFactory: () => new DataSource(testDatabaseConfig).initialize(),
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
    AppletNodeRelationRepository,
  ],
  exports: [
    APPLET_PERSISTENCE_REPOSITORY,
    APPLET_NODE_PERSISTENCE_REPOSITORY,
    PROVIDER_PERSISTENCE_REPOSITORY,
    USER_PERSISTENCE_REPOSITORY,
  ],
})
export class TypeormTestingModule {}
