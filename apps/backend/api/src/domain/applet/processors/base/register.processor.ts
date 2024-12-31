import { Inject, Injectable } from "@nestjs/common";

import { IAppletCreateInput } from "@domain/applet/types/applet.input.type";
import { IApplet } from "@domain/applet/types/applet.type";
import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "@domain/provider/provider.repository.type";
import {
  IProviderService,
  PROVIDER_SERVICE,
} from "@domain/provider/provider.service.type";

import { IAppletProcessor } from "../applet.processor.type";

@Injectable()
export class AppletRegisterProcessor
  implements IAppletProcessor<IAppletCreateInput>
{
  constructor(
    @Inject(PROVIDER_SERVICE)
    private readonly providerService: IProviderService,
    @Inject(PROVIDER_PERSISTENCE_REPOSITORY)
    private readonly providerPRepository: IProviderPersistenceRepository,
  ) {}

  async process(applet: IApplet): Promise<IApplet> {
    for (const node of applet.nodes) {
      const provider = await this.providerPRepository.getByAppletNodeId(
        node.id,
      );
      await this.providerService.registerTrigger(provider, node);
    }
    return applet;
  }
}
