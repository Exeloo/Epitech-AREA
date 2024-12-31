import { MigrationInterface, QueryRunner } from "typeorm";

export class AddInfosToProvider1734651328604 implements MigrationInterface {
  name = "AddInfosToProvider1734651328604";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE \`providers\` ADD \`name\` varchar(255) NOT NULL`,
    );
    await queryRunner.query(
      `ALTER TABLE \`providers\` ADD \`description\` varchar(255) NOT NULL`,
    );
    await queryRunner.query(
      `ALTER TABLE \`providers\` ADD \`img\` varchar(255) NOT NULL`,
    );
    await queryRunner.query(
      `ALTER TABLE \`providers\` ADD \`color\` varchar(255) NOT NULL`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(`ALTER TABLE \`providers\` DROP COLUMN \`color\``);
    await queryRunner.query(`ALTER TABLE \`providers\` DROP COLUMN \`img\``);
    await queryRunner.query(
      `ALTER TABLE \`providers\` DROP COLUMN \`description\``,
    );
    await queryRunner.query(`ALTER TABLE \`providers\` DROP COLUMN \`name\``);
  }
}
