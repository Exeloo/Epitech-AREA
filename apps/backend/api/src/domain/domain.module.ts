import { Module } from "@nestjs/common";

import { AuthService } from "@domain/auth/auth.service";
import { UserService } from "@domain/user/user.service";

import { AuthModule } from "~/shared/auth/auth.module";
import { PersistenceModule } from "~/shared/persistence/persistence.module";

@Module({
  imports: [AuthModule, PersistenceModule],
  providers: [AuthService, UserService],
  exports: [AuthService, UserService],
})
export class DomainModule {}
