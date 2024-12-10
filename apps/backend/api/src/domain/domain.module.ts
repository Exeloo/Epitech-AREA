import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";

import { AuthModule } from "~/shared/auth/auth.module";
import { PersistenceModule } from "~/shared/persistence/persistence.module";

import { AppletService } from "./applet/applet.service";
import { AuthService } from "./auth/auth.service";
import { DocumentationService } from "./documentation/documentation.service";
import { ManifestService } from "./provider/manifest/manifest.service";
import { ProviderService } from "./provider/provider.service";
import { UserService } from "./user/user.service";

@Module({
  imports: [ConfigModule, AuthModule, PersistenceModule],
  providers: [
    AppletService,
    AuthService,
    DocumentationService,
    ManifestService,
    ProviderService,
    UserService,
  ],
  exports: [
    AppletService,
    AuthService,
    DocumentationService,
    ManifestService,
    ProviderService,
    UserService,
  ],
})
export class DomainModule {}
