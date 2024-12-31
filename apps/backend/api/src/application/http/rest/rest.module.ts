import { Module } from "@nestjs/common";

import { DomainModule } from "@domain/domain.module";

import { DocumentationController } from "~/application/http/rest/controllers/documentation.controller";
import { ProviderController } from "~/application/http/rest/controllers/provider.controller";

@Module({
  imports: [DomainModule],
  controllers: [DocumentationController, ProviderController],
})
export class RestModule {}
