import { HttpModule } from "@nestjs/axios";
import { Module } from "@nestjs/common";
import { ConfigModule, ConfigService } from "@nestjs/config";
import { ThrottlerModule } from "@nestjs/throttler";

import { AuthGuard } from "@lib/auth";

import { AppGateway } from "~/app.gateway";
import { WeatherAction } from "~/provider/actions/weather.action";
import { ActionService } from "~/provider/services/action.service";
import { AuthService } from "~/provider/shared/auth/auth.service";

import { AppController } from "./app.controller";
import { AppService } from "./app.service";
import { throttlerConfig } from "./config/throttler.config";
import { validate } from "./config/validations/env.validation";

@Module({
  imports: [
    ConfigModule.forRoot({
      validate,
    }),
    ThrottlerModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: throttlerConfig,
    }),
    HttpModule,
  ],
  controllers: [AppController],
  providers: [
    AppService,
    AppGateway,

    AuthGuard,

    AuthService,

    ActionService,

    WeatherAction,
  ],
})
export class AppModule {}
