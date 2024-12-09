import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";

import { AuthModule } from "~/shared/auth/auth.module";
import { PersistenceModule } from "~/shared/persistence/persistence.module";

import { AuthService } from "./auth/auth.service";
import { DocumentationService } from "./documentation/documentation.service";
import { ProviderService } from "./provider/provider.service";
import { UserService } from "./user/user.service";

@Module({
  imports: [ConfigModule, AuthModule, PersistenceModule],
  providers: [AuthService, DocumentationService, ProviderService, UserService],
  exports: [AuthService, DocumentationService, ProviderService, UserService],
})
export class DomainModule {}
