import { Module } from "@nestjs/common";

import { AuthModule } from "~/shared/auth/auth.module";
import { PersistenceModule } from "~/shared/persistence/persistence.module";

import { AuthService } from "./auth/auth.service";
import { DocumentationService } from "./documentation/documentation.service";
import { UserService } from "./user/user.service";

@Module({
  imports: [AuthModule, PersistenceModule],
  providers: [AuthService, DocumentationService, UserService],
  exports: [AuthService, DocumentationService, UserService],
})
export class DomainModule {}
