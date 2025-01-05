import { MigrationInterface, QueryRunner } from "typeorm";

export class AddTriggers1736038671972 implements MigrationInterface {
  name = "AddTriggers1736038671972";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `CREATE TABLE \`triggers\` (\`id\` int NOT NULL AUTO_INCREMENT, \`base_id\` int NOT NULL, \`user_id\` int NOT NULL, \`action_id\` varchar(255) NOT NULL, \`input\` json NOT NULL, PRIMARY KEY (\`id\`)) ENGINE=InnoDB`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`DROP TABLE \`triggers\``);
  }
}
