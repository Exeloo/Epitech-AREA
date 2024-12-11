import { Module } from "@nestjs/common";
import { ConfigModule, ConfigService } from "@nestjs/config";
import {
  WinstonModule,
  utilities as nestWinstonModuleUtilities,
} from "nest-winston";
import * as winston from "winston";

@Module({
  imports: [
    WinstonModule.forRootAsync({
      imports: [ConfigModule],
      useFactory: () => {
        const config: { transports: any[] } = {
          transports: [],
        };

        config.transports.push(
          new winston.transports.Console({
            format: winston.format.combine(
              winston.format.timestamp(),
              winston.format.ms(),
              nestWinstonModuleUtilities.format.nestLike(
                "AREA-PROVIDER (DISCORD)",
                {
                  colors: true,
                  prettyPrint: true,
                },
              ),
            ),
          }),
        );

        return config;
      },
      inject: [ConfigService],
    }),
  ],
})
export class LoggerModule {}
