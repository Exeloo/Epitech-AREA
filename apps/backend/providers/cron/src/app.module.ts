import { HttpModule } from "@nestjs/axios";
import { Module } from "@nestjs/common";
import { ConfigModule, ConfigService } from "@nestjs/config";
import { ScheduleModule } from "@nestjs/schedule";
import { ThrottlerModule } from "@nestjs/throttler";

import { AuthGuard } from "@lib/auth";

import { AppCron } from "~/app.cron";
import { AppGateway } from "~/app.gateway";
import { TriggerService } from "~/provider/services/trigger.service";
import { EventModule } from "~/provider/shared/event/event.module";
import { CronTrigger } from "~/provider/triggers/cron.trigger";

import { AppController } from "./app.controller";
import { AppService } from "./app.service";
import { throttlerConfig } from "./config/throttler.config";
import { validate } from "./config/validations/env.validation";

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
    EventModule,
    HttpModule,
  ],
  controllers: [AppController],
  providers: [
    AppService,
    AppGateway,
    AppCron,

    AuthGuard,

    TriggerService,

    CronTrigger,
  ],
})
export class AppModule {}
