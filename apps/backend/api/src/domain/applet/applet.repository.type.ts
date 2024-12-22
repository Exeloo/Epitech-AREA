import { ID } from "@d-type/id.type";

import { IBasePersistenceRepository } from "@domain/common/interfaces/repositories/base.persistence.repository.type";

import { IApplet } from "./types/applet.type";

export const APPLET_PERSISTENCE_REPOSITORY = "APPLET_PERSISTENCE_REPOSITORY";

export interface IAppletPersistenceRepository
  extends IBasePersistenceRepository<IApplet> {
  getAllWithOwner(userId: ID): Promise<IApplet[]>;
  getByIdWithOwner(id: ID, userId: ID): Promise<IApplet>;
}
