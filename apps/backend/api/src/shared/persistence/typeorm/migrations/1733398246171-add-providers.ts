import { MigrationInterface, QueryRunner } from "typeorm";

export class AddProviders1733398246171 implements MigrationInterface {
  name = "AddProviders1733398246171";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `CREATE TABLE \`providers\` (\`id\` int NOT NULL AUTO_INCREMENT, \`provider_id\` varchar(255) NOT NULL, \`host\` varchar(255) NOT NULL, \`visibility\` enum ('PUBLIC', 'UNLISTED', 'PRIVATE') NOT NULL DEFAULT 'PRIVATE', \`created_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), \`updated_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6), UNIQUE INDEX \`IDX_e5f817b362ee59803255e347fa\` (\`provider_id\`), PRIMARY KEY (\`id\`)) ENGINE=InnoDB`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `DROP INDEX \`IDX_e5f817b362ee59803255e347fa\` ON \`providers\``,
    );
    await queryRunner.query(`DROP TABLE \`providers\``);
  }
}
