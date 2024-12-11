import { Injectable } from "@nestjs/common";
import axios from "axios";

import { IAppletSubscribeInput } from "@domain/applet/types/applet.input.type";
import { IManifest } from "@domain/provider/manifest/types/manifest.type";
import { IProviderService } from "@domain/provider/provider.service.type";
import { IProvider } from "@domain/provider/types/provider.type";

import { ProviderRepository } from "./provider.repository";

@Injectable()
export class ProviderService implements IProviderService {
  constructor(private readonly providerRepository: ProviderRepository) {}

  getManifest(provider: IProvider): Promise<IManifest> {
    return this.providerRepository.getManifest(provider.host);
  }

  subscribe(input: IAppletSubscribeInput): Promise<void> {
    return axios.post(
      "http://provider-discord:3001/area/triggers/discord",
      input,
    );
  }
}
