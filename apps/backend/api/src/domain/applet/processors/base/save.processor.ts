import { Inject, Injectable } from "@nestjs/common";

import {
  APPLET_NODE_PERSISTENCE_REPOSITORY,
  IAppletNodePersistenceRepository,
} from "@domain/applet/node/applet-node.repository.type";
import { IAppletInput } from "@domain/applet/types/applet.input.type";
import { IApplet } from "@domain/applet/types/applet.type";

import { IAppletProcessor } from "../applet.processor.type";

@Injectable()
export class AppletSaveProcessor implements IAppletProcessor<IAppletInput> {
  constructor(
    @Inject(APPLET_NODE_PERSISTENCE_REPOSITORY)
    private readonly appletNodePRepository: IAppletNodePersistenceRepository,
  ) {}

  async process(applet: IApplet, data: IAppletInput): Promise<IApplet> {
    return {
      ...applet,
      nodes: await this.appletNodePRepository.saveNodes(
        data.triggerNodes,
        applet.id,
      ),
    };
  }
}
