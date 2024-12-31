import { DeepPartial } from "@type/nullable.type";

import { ID } from "@d-type/id.type";

import { IBasePersistenceRepository } from "@domain/common/interfaces/repositories/base.persistence.repository.type";

import { IAppletNode } from "./types/applet-node.type";

export const APPLET_NODE_PERSISTENCE_REPOSITORY =
  "APPLET_NODE_PERSISTENCE_REPOSITORY";

export interface IAppletNodePersistenceRepository
  extends IBasePersistenceRepository<IAppletNode> {
  getPreviousById(id: ID): Promise<IAppletNode[]>;
  getNextById(id: ID): Promise<IAppletNode[]>;

  saveNodes(
    nodes: DeepPartial<IAppletNode[]>,
    appletId: ID,
  ): Promise<IAppletNode[]>;

  getAllTriggersByProviderId(id: ID): Promise<IAppletNode[]>;

  getAllTriggersByAppletId(id: ID): Promise<IAppletNode[]>;
}
