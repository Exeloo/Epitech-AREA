import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import {
  APPLET_NODE_PERSISTENCE_REPOSITORY,
  IAppletNodePersistenceRepository,
} from "@domain/applet/node/applet-node.repository.type";
import { IExposedAppletNode } from "@domain/applet/node/types/applet-node.type";

@Injectable()
export class AppletNodeService {
  constructor(
    @Inject(APPLET_NODE_PERSISTENCE_REPOSITORY)
    private readonly appletNodePRepository: IAppletNodePersistenceRepository,
  ) {}

  getPreviousByAppletNodeId(id: ID): Promise<IExposedAppletNode[]> {
    return this.appletNodePRepository.getPreviousById(id);
  }

  getNextByAppletNodeId(id: ID): Promise<IExposedAppletNode[]> {
    return this.appletNodePRepository.getNextById(id);
  }
}
