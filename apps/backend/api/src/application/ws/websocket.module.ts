import { Module } from "@nestjs/common";
import { ProviderGateway } from "src/application/ws/gateways/provider.gateway";

import { DomainModule } from "@domain/domain.module";

@Module({
  imports: [DomainModule],
  providers: [ProviderGateway],
})
export class WebsocketModule {}
