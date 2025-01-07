import { HttpModule } from "@nestjs/axios";
import { Module } from "@nestjs/common";
import { ConfigModule, ConfigService } from "@nestjs/config";
import { ScheduleModule } from "@nestjs/schedule";
import { ThrottlerModule } from "@nestjs/throttler";
import { TypeOrmModule } from "@nestjs/typeorm";
import { validate } from "class-validator";

import { AuthGuard } from "@lib/auth";

import { AppCron } from "~/app.cron";
import { AppGateway } from "~/app.gateway";
import { databaseConfig } from "~/config/database.config";
import { MessageAction } from "~/provider/actions/message.action";
import { ActionService } from "~/provider/services/action.service";
import { TriggerEntity } from "~/provider/services/trigger.entity";
import { TriggerService } from "~/provider/services/trigger.service";
import { AuthService } from "~/provider/shared/auth/auth.service";
import { EventModule } from "~/provider/shared/event/event.module";
import { GatewayRepository } from "~/provider/shared/gateway/gateway.repository";
import { AutomodTrigger } from "~/provider/triggers/automod.trigger";
import { ChannelTrigger } from "~/provider/triggers/channel.trigger";
import { MessageTrigger } from "~/provider/triggers/message.trigger";

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
    TypeOrmModule.forFeature([TriggerEntity]),
    EventModule,
    HttpModule,
  ],
  controllers: [AppController],
  providers: [
    AppService,
    AppGateway,
    AppCron,

    AuthGuard,
    GatewayRepository,

    AuthService,

    ActionService,
    TriggerService,

    MessageAction,

    MessageTrigger,
    AutomodTrigger,
    ChannelTrigger,
  ],
})
export class AppModule {}
