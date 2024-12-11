import { Inject, Injectable } from "@nestjs/common";

import { IAppletSubscribeInput } from "@domain/applet/types/applet.input.type";
import { IExposedApplet } from "@domain/applet/types/applet.type";
import {
  IProviderService,
  PROVIDER_SERVICE,
} from "@domain/provider/provider.service.type";

@Injectable()
export class AppletService {
  constructor(
    @Inject(PROVIDER_SERVICE)
    private readonly providerService: IProviderService,
  ) {}

  async subscribe(input: IAppletSubscribeInput): Promise<IExposedApplet> {
    await this.providerService.subscribe(input);
    return {
      id: -1,
      name: input.name,
    };
  }
}
