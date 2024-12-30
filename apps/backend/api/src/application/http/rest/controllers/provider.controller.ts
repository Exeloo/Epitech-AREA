import { Controller, Get, UseGuards } from "@nestjs/common";

import { AppletNodeService } from "@domain/applet/node/applet-node.service";
import { IProviderAppletNode } from "@domain/applet/node/types/applet-node.type";
import { IProvider } from "@domain/provider/types/provider.type";

import { RestCurrentProvider } from "~/application/http/rest/common/decorators/rest-current-provider.decorator";
import { RestApikeyAuthGuard } from "~/application/http/rest/common/guards/rest-apikey-auth.guard";

@Controller("area")
@UseGuards(RestApikeyAuthGuard)
export class ProviderController {
  constructor(private readonly appletNodeService: AppletNodeService) {}

  @Get("triggers")
  async fetchAllTriggersAppletNodes(
    @RestCurrentProvider() provider: IProvider,
  ): Promise<IProviderAppletNode[]> {
    return this.appletNodeService.getTriggersByProviderIdAsProviderManifest(
      provider.id,
    );
  }
}
