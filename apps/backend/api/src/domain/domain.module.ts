import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";

import { AppletNodeService } from "@domain/applet/node/applet-node.service";

import { AuthModule } from "~/shared/auth/auth.module";
import { PersistenceModule } from "~/shared/persistence/persistence.module";
import { ProviderModule } from "~/shared/provider/provider.module";

import { AppletService } from "./applet/applet.service";
import { AuthService } from "./auth/auth.service";
import { DocumentationService } from "./documentation/documentation.service";
import { ManifestService } from "./provider/manifest/manifest.service";
import { ProviderService } from "./provider/provider.service";
import { UserService } from "./user/user.service";

@Module({
  imports: [ConfigModule, AuthModule, PersistenceModule, ProviderModule],
  providers: [
    AppletService,
    AppletNodeService,
    AuthService,
    DocumentationService,
    ManifestService,
    ProviderService,
    UserService,
  ],
  exports: [
    AppletService,
    AppletNodeService,
    AuthService,
    DocumentationService,
    ManifestService,
    ProviderService,
    UserService,
  ],
})
export class DomainModule {}
