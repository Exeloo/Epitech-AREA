import { Injectable } from "@nestjs/common";

import { IManifest } from "@domain/provider/manifest/types/manifest.type";
import { IProviderService } from "@domain/provider/provider.service.type";
import { IProvider } from "@domain/provider/types/provider.type";

import { ProviderRepository } from "./provider.repository";

@Injectable()
export class ProviderService implements IProviderService {
  constructor(private readonly providerRepository: ProviderRepository) {}

  getManifest(provider: IProvider): Promise<IManifest> {
    return this.providerRepository.getManifest(provider.host, "api-key");
  }
}
