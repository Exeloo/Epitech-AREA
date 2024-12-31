import { MigrationInterface, QueryRunner } from "typeorm";

export class AddTriggers1734996717437 implements MigrationInterface {
  name = "AddTriggers1734996717437";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `CREATE TABLE \`triggers\` (\`id\` int NOT NULL AUTO_INCREMENT, \`base_id\` int NOT NULL, \`action_id\` varchar(255) NOT NULL, \`input\` json NOT NULL, PRIMARY KEY (\`id\`)) ENGINE=InnoDB`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`DROP TABLE \`triggers\``);
  }
}
