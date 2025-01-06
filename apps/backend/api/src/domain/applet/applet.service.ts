import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import { AuthorizationException } from "@exception";

import { AppletRunProcessor } from "@domain/applet/processors/run/run.processor";
import { ITriggerInput } from "@domain/applet/types/trigger-input.type";
import {
  IProviderPersistenceRepository,
  PROVIDER_PERSISTENCE_REPOSITORY,
} from "@domain/provider/provider.repository.type";

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

  async create(user: IUser, data: IAppletCreateInput): Promise<IApplet> {
    const applet = await this.appletPRepository.createEntity({
      name: data.name,
      description: data.description,
      owner: {
        id: user.id,
      },
    });
    return this.appletCreateProcessor.process({ ...applet, owner: user }, data);
  }

  async handleTrigger(providerIds: Set<string>, data: ITriggerInput) {
    let provider;
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
