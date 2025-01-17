import { Injectable, Logger } from "@nestjs/common";

import { capitalize } from "@utils/string.utils";

import { IProvider } from "@domain/provider/types/provider.type";

import { ManifestService } from "../provider/manifest/manifest.service";
import { ProviderService } from "../provider/provider.service";
import {
  IDocumentation,
  IProviderDocumentation,
  IServerDocumentation,
} from "./documentation.type";

@Injectable()
export class DocumentationService {
  private readonly logger = new Logger("DocumentationService");

  constructor(
    private readonly providerService: ProviderService,
    private readonly manifestService: ManifestService,
  ) {}

  async getServices(
    providers: IProvider[],
  ): Promise<Omit<IServerDocumentation, "current_time">> {
    const services: IProviderDocumentation[] = [];
    let actions_nb = 0;
    let reactions_nb = 0;
    for (const provider of providers) {
      try {
        const manifest = await this.manifestService.getByProviderId(
          provider.id,
        );
        actions_nb += manifest.triggers.length;
        reactions_nb += manifest.actions.length;
        services.push({
          name: capitalize(manifest.id),
          actions_nb: manifest.triggers.length,
          reactions_nb: manifest.actions.length,
          actions: manifest.triggers.map((trigger) => ({
            id: trigger.id,
            name: trigger.name,
            description: trigger.description,
          })),
          reactions: manifest.actions.map((action) => ({
            id: action.id,
            name: action.name,
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
    return {
      actions_nb,
      reactions_nb,
      areas_nb: actions_nb + reactions_nb,
      services,
    };
  }

  async getDocumentation(clientIp: string): Promise<IDocumentation> {
    const providers = await this.providerService.getAll();
    const { actions_nb, reactions_nb, areas_nb, services } =
      await this.getServices(providers);

    return {
      client: {
        host: clientIp,
      },
      server: {
        current_time: Math.floor(Date.now() / 1000),
        actions_nb,
        reactions_nb,
        areas_nb,
        services,
      },
    };
  }
}
