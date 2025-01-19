import { Module } from "@nestjs/common";

import { TypeormTestingModule } from "./typeorm.testing-module";

@Module({
  imports: [TypeormTestingModule],
  exports: [TypeormTestingModule],
})
export class PersistenceTestingModule {}
