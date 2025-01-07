import { Module } from "@nestjs/common";

import { DomainModule } from "@domain/domain.module";

import { GoogleAuthController } from "./controller/auth/google.auth.controller";
import { ProviderAuthController } from "./controller/provider/oauth.controller";

@Module({
  imports: [DomainModule],
  controllers: [GoogleAuthController, ProviderAuthController],
  providers: [],
})
export class MvcModule {}
