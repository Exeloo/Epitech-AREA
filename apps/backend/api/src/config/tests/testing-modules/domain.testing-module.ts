import { Module } from "@nestjs/common";
import { ConfigModule } from "@nestjs/config";

import { AppletService } from "@domain/applet/applet.service";
import { AppletNodeService } from "@domain/applet/node/applet-node.service";
import { AppletInputProcessor } from "@domain/applet/processors/base/input.processor";
import { AppletRegisterProcessor } from "@domain/applet/processors/base/register.processor";
import { AppletSaveProcessor } from "@domain/applet/processors/base/save.processor";
import { AppletCreateProcessor } from "@domain/applet/processors/create/create.processor";
import { AppletRunProcessor } from "@domain/applet/processors/run/run.processor";
import { AuthService } from "@domain/auth/auth.service";
import { DocumentationService } from "@domain/documentation/documentation.service";
import { ManifestService } from "@domain/provider/manifest/manifest.service";
import { ProviderService } from "@domain/provider/provider.service";
import { UserService } from "@domain/user/user.service";

import { ProviderModule } from "~/shared/provider/provider.module";

import { AuthTestingModule } from "./auth.testing-module";
import { PersistenceTestingModule } from "./persistence.testing-module";

@Module({
  imports: [
    ConfigModule,
    AuthTestingModule,
    PersistenceTestingModule,
    ProviderModule,
  ],
  providers: [
    AppletService,
    AppletNodeService,

    AppletInputProcessor,
    AppletRegisterProcessor,
    AppletSaveProcessor,
    AppletCreateProcessor,
    AppletRunProcessor,

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
export class DomainTestingModule {}
