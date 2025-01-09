import { HttpModule } from "@nestjs/axios";
import { Module } from "@nestjs/common";
import { ConfigModule, ConfigService } from "@nestjs/config";
import { ScheduleModule } from "@nestjs/schedule";
import { ThrottlerModule } from "@nestjs/throttler";
import { TypeOrmModule } from "@nestjs/typeorm";
import { validate } from "class-validator";

import { AuthGuard } from "@lib/auth";

import { AppGateway } from "~/app.gateway";
import { databaseConfig } from "~/config/database.config";
import { GmailAction } from "~/provider/actions/gmail.action";
import { ActionService } from "~/provider/services/action.service";
import { AccountEntity } from "~/provider/shared/auth/account.entity";
import { AuthService } from "~/provider/shared/auth/auth.service";

import { AppController } from "./app.controller";
import { AppService } from "./app.service";
import { throttlerConfig } from "./config/throttler.config";

@Module({
  imports: [
    ConfigModule.forRoot({
      validate,
    }),
    ScheduleModule.forRoot(),
    ThrottlerModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: throttlerConfig,
    }),
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      useFactory: () => databaseConfig,
    }),
    TypeOrmModule.forFeature([AccountEntity]),
    HttpModule,
  ],
  controllers: [AppController],
  providers: [
    AppService,
    AppGateway,

    AuthGuard,

    AuthService,

    ActionService,

    GmailAction,
  ],
})
export class AppModule {}
