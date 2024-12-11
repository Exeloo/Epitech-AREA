import { Logger } from "@nestjs/common";
import { CommandFactory } from "nest-commander";

import { CliModule } from "./application/cli/cli.module";

const logger = new Logger("CLI");

async function bootstrap() {
  await CommandFactory.run(CliModule, logger);
}

bootstrap()
  .then(async () => {
    logger.log("Command bootstrapped");
    process.exit(0);
  })
  .catch((err) => {
    logger.error("Server failed to start command", err);
    process.exit(1);
  });
