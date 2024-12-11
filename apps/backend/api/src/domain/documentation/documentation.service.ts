import { Injectable } from "@nestjs/common";

import { AsyncArrayUtils } from "@utils/async-array.utils";

import { ManifestService } from "../provider/manifest/manifest.service";
import { ProviderService } from "../provider/provider.service";
import { IDocumentation, IProviderDocumentation } from "./documentation.type";

@Injectable()
export class DocumentationService {
  constructor(
    private readonly providerService: ProviderService,
    private readonly manifestService: ManifestService,
  ) {}

  async getDocumentation(clientIp: string): Promise<IDocumentation> {
    const providers = await this.providerService.getAll();

    return {
      client: {
        host: clientIp,
      },
      server: {
        current_time: Math.floor(Date.now() / 1000),
        services: await AsyncArrayUtils.map(
          providers,
          async (provider): Promise<IProviderDocumentation> => {
            const manifest = await this.manifestService.getByProviderId(
              provider.id,
            );
            return {
              name: manifest.id,
              actions: manifest.triggers.map((trigger) => ({
                name: trigger.id,
                description: trigger.description,
              })),
              reactions: manifest.actions.map((action) => ({
                name: action.id,
                description: action.description,
              })),
            };
          },
        ),
      },
    };
  }
}
