import { DataSource } from "typeorm";

import { testDatabaseConfig } from "./database.test.config";

export default new DataSource({
  ...testDatabaseConfig,
  migrations: [__dirname + "/../libs/persistence/typeorm/migration/*.ts"],
});
