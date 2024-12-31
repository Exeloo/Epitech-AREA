import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import { IUser } from "../user/types/user.type";
import {
  APPLET_PERSISTENCE_REPOSITORY,
  IAppletPersistenceRepository,
} from "./applet.repository.type";
import { AppletCreateProcessor } from "./processors/create/create.processor";
import { IAppletCreateInput } from "./types/applet.input.type";
import { IApplet } from "./types/applet.type";

@Injectable()
export class AppletService {
  constructor(
    @Inject(APPLET_PERSISTENCE_REPOSITORY)
    private readonly appletPRepository: IAppletPersistenceRepository,
    private readonly appletCreateProcessor: AppletCreateProcessor,
  ) {}

  getAllWithOwner(user: IUser): Promise<IApplet[]> {
    return this.appletPRepository.getAllWithOwner(user.id);
  }

  getByIdWithOwner(id: ID, user: IUser): Promise<IApplet> {
    return this.appletPRepository.getByIdWithOwner(id, user.id);
  }

  async create(user: IUser, data: IAppletCreateInput): Promise<IApplet> {
    const applet = await this.appletPRepository.createEntity({
      name: data.name,
      description: data.description,
      owner: {
        id: user.id,
      },
    });
    return this.appletCreateProcessor.process(applet, data);
  }
}
