import { Inject, Injectable, Logger } from "@nestjs/common";

import { AuthorizationException } from "@exception";

import {
  APPLET_NODE_PERSISTENCE_REPOSITORY,
  IAppletNodePersistenceRepository,
} from "@domain/applet/node/applet-node.repository.type";
import { IAppletNode } from "@domain/applet/node/types/applet-node.type";
import { ITriggerInput } from "@domain/applet/types/trigger-input.type";
import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "@domain/provider/provider.repository.type";
import {
  IProviderService,
  PROVIDER_SERVICE,
} from "@domain/provider/provider.service.type";
import { IProvider } from "@domain/provider/types/provider.type";

@Injectable()
export class AppletRunProcessor {
  private logger: Logger;

  constructor(
    @Inject(APPLET_NODE_PERSISTENCE_REPOSITORY)
    private readonly appletNodePRepository: IAppletNodePersistenceRepository,
    @Inject(PROVIDER_PERSISTENCE_REPOSITORY)
    private readonly providerPRepository: IProviderPersistenceRepository,
    @Inject(PROVIDER_SERVICE)
    private readonly providerService: IProviderService,
  ) {
    this.logger = new Logger(`DOMAIN (Applet ${this.constructor.name})`);
  }

  async process(provider: IProvider, data: ITriggerInput): Promise<void> {
    this.logger.debug(`Processing trigger ${provider.providerId}.${data.name}`);
    for (const id of data.triggered) {
      this.logger.debug(`Processing runner applet node ${id}`);
      try {
        const trigger = await this.appletNodePRepository.getById(id);
        const nodeProvider = await this.providerPRepository.getByAppletNodeId(
          trigger.id,
        );
        if (nodeProvider.id !== provider.id)
          throw new AuthorizationException(
            "UNAUTHORIZED_BAD_PROVIDER",
            "You cannot call a trigger of an other provider",
          );
        await this.processApplet(trigger);
      } catch (e) {
        this.logger.error(e);
      }
    }
  }

  private async processApplet(prevNode: IAppletNode) {
    const actions = await this.appletNodePRepository.getNextById(prevNode.id);
    for (const action of actions) {
      const provider = await this.providerPRepository.getByAppletNodeId(
        action.id,
      );
      await this.providerService.runAction(provider, action, action.input);
      await this.processApplet(action);
    }
  }
}
