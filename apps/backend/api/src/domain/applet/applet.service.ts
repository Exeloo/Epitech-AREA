import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import {
  APPLET_PERSISTENCE_REPOSITORY,
  IAppletPersistenceRepository,
} from "@domain/applet/applet.repository.type";
import { IApplet } from "@domain/applet/types/applet.type";
import { IUser } from "@domain/user/types/user.type";

@Injectable()
export class AppletService {
  constructor(
    @Inject(APPLET_PERSISTENCE_REPOSITORY)
    private readonly appletPRepository: IAppletPersistenceRepository,
  ) {}

  getAllWithOwner(user: IUser): Promise<IApplet[]> {
    return this.appletPRepository.getAllWithOwner(user.id);
  }

  getByIdWithOwner(id: ID, user: IUser): Promise<IApplet> {
    return this.appletPRepository.getByIdWithOwner(id, user.id);
  }
}
