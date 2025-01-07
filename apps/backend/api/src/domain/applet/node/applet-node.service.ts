import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import {
  APPLET_NODE_PERSISTENCE_REPOSITORY,
  IAppletNodePersistenceRepository,
} from "@domain/applet/node/applet-node.repository.type";
import {
  IAppletNode,
  IExposedAppletNode,
  IProviderAppletNode,
} from "@domain/applet/node/types/applet-node.type";

@Injectable()
export class AppletNodeService {
  constructor(
    @Inject(APPLET_NODE_PERSISTENCE_REPOSITORY)
    private readonly appletNodePRepository: IAppletNodePersistenceRepository,
  ) {}

  getPreviousByAppletNodeId(id: ID): Promise<IAppletNode[]> {
    return this.appletNodePRepository.getPreviousById(id);
  }

  getNextByAppletNodeId(id: ID): Promise<IAppletNode[]> {
    return this.appletNodePRepository.getNextById(id);
  }

  async getTriggersByProviderIdAsProviderManifest(
    id: ID,
  ): Promise<IProviderAppletNode[]> {
    const nodes =
      await this.appletNodePRepository.getAllTriggersByProviderId(id);
    return nodes.map((node) => ({
      baseId: node.id,
      actionId: node.actionId,
      input: node.input,
    }));
  }

  getTriggersByAppletId(id: ID): Promise<IAppletNode[]> {
    return this.appletNodePRepository.getAllTriggersByAppletId(id);
  }

  async getExposedApplets(
    applets: Promise<IAppletNode[]>,
  ): Promise<IExposedAppletNode[]> {
    return (await applets).map(this.getExposedApplet);
  }

  getExposedApplet(applet: IAppletNode): IExposedAppletNode {
    return {
      id: applet.id,
      actionId: applet.actionId,
      actionType: applet.actionType,
      input: JSON.stringify(applet.input),
    };
  }

  async getAsyncExposedApplet(
    applet: Promise<IAppletNode>,
  ): Promise<IExposedAppletNode> {
    const value = await applet;
    return {
      id: value.id,
      actionId: value.actionId,
      actionType: value.actionType,
      input: JSON.stringify(value.input),
    };
  }

  getById(id: ID): Promise<IAppletNode> {
    return this.appletNodePRepository.getById(id);
  }
}
