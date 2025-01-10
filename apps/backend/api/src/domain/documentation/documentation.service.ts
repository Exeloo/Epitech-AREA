import { Injectable, Logger } from "@nestjs/common";

import { IProvider } from "@domain/provider/types/provider.type";

import { ManifestService } from "../provider/manifest/manifest.service";
import { ProviderService } from "../provider/provider.service";
import { IDocumentation, IProviderDocumentation } from "./documentation.type";

@Injectable()
export class DocumentationService {
  private readonly logger = new Logger("DocumentationService");

  constructor(
    private readonly providerService: ProviderService,
    private readonly manifestService: ManifestService,
  ) {}

  async getServices(providers: IProvider[]): Promise<IProviderDocumentation[]> {
    const services: IProviderDocumentation[] = [];
    for (const provider of providers) {
      try {
        const manifest = await this.manifestService.getByProviderId(
          provider.id,
        );
        services.push({
          name: manifest.id,
          actions: manifest.triggers.map((trigger) => ({
            name: trigger.id,
            description: trigger.description,
          })),
          reactions: manifest.actions.map((action) => ({
            name: action.id,
            description: action.description,
          })),
        });
      } catch (e) {
        this.logger.error(
          `Unable to get provider (${provider.id}) manifest`,
          e,
        );
      }
    }
    return services;
  }

  async getDocumentation(clientIp: string): Promise<IDocumentation> {
    const providers = await this.providerService.getAll();

    return {
      client: {
        host: clientIp,
      },
      server: {
        current_time: Math.floor(Date.now() / 1000),
        services: await this.getServices(providers),
      },
    };
  }
}
