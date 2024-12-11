import { Injectable } from "@nestjs/common";

import { getManifest } from "./common/manifest/functions/get-manifest";
import "./common/subscribe/client";
import { events } from "./common/subscribe/events";

@Injectable()
export class AppService {
  async getManifest(): Promise<any> {
    return getManifest();
  }

  subscribe(input: any) {
    events.add({
      input: {
        guild: input.guildIdInput,
        channel: input.channelIdInput,
      },
      output: {
        guild: input.guildIdOutput,
        channel: input.channelIdOutput,
        message: input.message,
      },
    });
  }
}
