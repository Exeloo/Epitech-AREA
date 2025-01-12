import { MigrationInterface, QueryRunner } from "typeorm";

export class AddAccounts1736558859998 implements MigrationInterface {
  name = "AddAccounts1736558859998";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `CREATE TABLE \`accounts\` (\`id\` int NOT NULL AUTO_INCREMENT, \`user_id\` int NOT NULL, \`provider_id\` varchar(255) NOT NULL, \`token\` varchar(512) NOT NULL, PRIMARY KEY (\`id\`)) ENGINE=InnoDB`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`DROP TABLE \`accounts\``);
  }
}
