import { Controller, Get, Ip } from "@nestjs/common";

import { DocumentationService } from "@domain/documentation/documentation.service";
import { IDocumentation } from "@domain/documentation/documentation.type";

@Controller()
export class DocumentationController {
  constructor(private readonly documentationService: DocumentationService) {}

  @Get("about.json")
  async documentation(@Ip() ip: string): Promise<IDocumentation> {
    return this.documentationService.getDocumentation(ip.split(":")[3]);
  }
}
