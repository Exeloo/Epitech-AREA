import { Module } from "@nestjs/common";

import { DomainModule } from "@domain/domain.module";

import { DocumentationController } from "~/application/http/rest/controllers/documentation.controller";

@Module({
  imports: [DomainModule],
  controllers: [DocumentationController],
})
export class RestModule {}
