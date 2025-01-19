import { Injectable, Logger } from "@nestjs/common";

import { AppletRegisterProcessor } from "@domain/applet/processors/base/register.processor";

import { IAppletInput } from "../../types/applet.input.type";
import { IApplet } from "../../types/applet.type";
import {
  IAppletPreProcessor,
  IAppletProcessor,
} from "../applet.processor.type";
import { AppletInputProcessor } from "../base/input.processor";
import { AppletSaveProcessor } from "../base/save.processor";

@Injectable()
export class AppletCreateProcessor implements IAppletProcessor<IAppletInput> {
  private readonly preProcessors: IAppletPreProcessor<IAppletInput>[];
  private readonly processors: IAppletProcessor<IAppletInput>[];
  private logger: Logger;

  constructor(
    appletVerifyInputProcessor: AppletInputProcessor,
    appletSaveProcessor: AppletSaveProcessor,
    appletRegisterProcessor: AppletRegisterProcessor,
  ) {
    this.preProcessors = [appletVerifyInputProcessor]; // ! Mettre un pre processor pour tester l'authorization et throw une erreur spe qui sera catch par le service
    this.processors = [appletSaveProcessor, appletRegisterProcessor];
    this.logger = new Logger(`DOMAIN (Applet ${this.constructor.name})`);
  }

  async process(applet: IApplet, data: IAppletInput): Promise<IApplet> {
    this.logger.log(`Processing applet ${applet.id}`);

    data = await this.runPreProcess(applet, data);
    applet = await this.runProcess(applet, data);

    return applet;
  }

  private async runPreProcess(
    applet: IApplet,
    data: IAppletInput,
  ): Promise<IAppletInput> {
    for (const processor of this.preProcessors) {
      this.logger.debug(
        `Pre-Processing applet ${applet.id} with ${processor.constructor.name}`,
      );
      data = await processor.process(applet, data);
    }

    return data;
  }

  private async runProcess(
    applet: IApplet,
    data: IAppletInput,
  ): Promise<IApplet> {
    for (const processor of this.processors) {
      this.logger.debug(
        `Processing applet ${applet.id} with ${processor.constructor.name}`,
      );
      applet = await processor.process(applet, data);
    }

    return applet;
  }
}
