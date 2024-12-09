import { Module } from "@nestjs/common";

import { DomainModule } from "@domain/domain.module";

import { GoogleAuthController } from "./controller/auth/google.auth.controller";

@Module({
  imports: [DomainModule],
  controllers: [GoogleAuthController],
  providers: [],
})
export class MvcModule {}
