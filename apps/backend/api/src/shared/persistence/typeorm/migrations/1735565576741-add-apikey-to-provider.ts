import { MigrationInterface, QueryRunner } from "typeorm";

export class AddApikeyToProvider1735565576741 implements MigrationInterface {
  name = "AddApikeyToProvider1735565576741";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE \`providers\` ADD \`api_key\` varchar(255) NOT NULL`,
    );
    await queryRunner.query(
      `ALTER TABLE \`providers\` ADD UNIQUE INDEX \`IDX_6e9c501ed7c08c6741523d8f7b\` (\`api_key\`)`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE \`providers\` DROP INDEX \`IDX_6e9c501ed7c08c6741523d8f7b\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`providers\` DROP COLUMN \`api_key\``,
    );
  }
}
