import { Injectable } from "@nestjs/common";

import { IDocumentation } from "@domain/documentation/documentation.type";

@Injectable()
export class DocumentationService {
  async getDocumentation(clientIp: string): Promise<IDocumentation> {
    return {
      client: {
        host: clientIp,
      },
      server: {
        current_time: Math.floor(Date.now() / 1000),
        services: [],
      },
    };
  }
}
