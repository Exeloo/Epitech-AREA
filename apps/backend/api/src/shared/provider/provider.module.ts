import { HttpModule } from "@nestjs/axios";
import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";

import { PROVIDER_SERVICE } from "@domain/provider/provider.service.type";

import { ProviderRepository } from "~/shared/provider/provider.repository";

import { ProviderService } from "./provider.service";

@Module({
  imports: [ConfigModule, HttpModule],
  providers: [
    {
      provide: PROVIDER_SERVICE,
      useClass: ProviderService,
    },
    ProviderRepository,
  ],
  exports: [PROVIDER_SERVICE],
})
export class ProviderModule {}
