import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import { AuthorizationException } from "@exception";

import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "@domain/provider/provider.repository.type";

import { IProvider } from "../provider/types/provider.type";
import { IUser } from "../user/types/user.type";
import {
  APPLET_PERSISTENCE_REPOSITORY,
  IAppletPersistenceRepository,
} from "./applet.repository.type";
import { AppletCreateProcessor } from "./processors/create/create.processor";
import { AppletRunProcessor } from "./processors/run/run.processor";
import { IAppletInput } from "./types/applet.input.type";
import { IApplet } from "./types/applet.type";
import { ITriggerInput } from "./types/trigger-input.type";

@Injectable()
export class AppletService {
  constructor(
    @Inject(APPLET_PERSISTENCE_REPOSITORY)
    private readonly appletPRepository: IAppletPersistenceRepository,
    @Inject(PROVIDER_PERSISTENCE_REPOSITORY)
    private readonly providerPRepository: IProviderPersistenceRepository,
    private readonly appletCreateProcessor: AppletCreateProcessor,
    private readonly appletRunProcessor: AppletRunProcessor,
  ) {}

  getAllWithOwner(user: IUser): Promise<IApplet[]> {
    return this.appletPRepository.getAllWithOwner(user.id);
  }

  getByIdWithOwner(id: ID, user: IUser): Promise<IApplet> {
    return this.appletPRepository.getByIdWithOwner(id, user.id);
  }

  async create(user: IUser, data: IAppletInput): Promise<IApplet> {
    const applet = await this.appletPRepository.createEntity({
      name: data.name,
      description: data.description,
      owner: {
        id: user.id,
      },
    });
    return this.appletCreateProcessor.process({ ...applet, owner: user }, data);
  }

  async update(user: IUser, id: ID, data: IAppletInput): Promise<IApplet> {
    await this.delete(user, id);
    return this.create(user, data);
  }

  async delete(user: IUser, id: ID): Promise<IApplet> {
    const applet = await this.appletPRepository.getByIdWithOwner(id, user.id);
    return this.appletPRepository.deleteEntity(applet.id, true);
  }

  async handleTrigger(providerIds: Set<string>, data: ITriggerInput) {
    let provider: IProvider;
    for (const pId of providerIds) {
      provider = await this.providerPRepository.getByProviderId(pId);
      if (provider) break;
    }
    if (!provider)
      throw new AuthorizationException(
        "UNAUTHORIZED_NOT_AUTHENTICATE",
        "You must authenticate first",
        {
          cause: new Error("Not ids of existing provider"),
        },
      );
    await this.appletRunProcessor.process(provider, data);
    return {
      message: "success",
    };
  }
}
