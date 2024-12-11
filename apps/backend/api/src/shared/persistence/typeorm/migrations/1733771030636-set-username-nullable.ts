import { MigrationInterface, QueryRunner } from "typeorm";

export class SetUsernameNullable1733771030636 implements MigrationInterface {
  name = "SetUsernameNullable1733771030636";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE \`users\` CHANGE \`username\` \`username\` varchar(255) NULL`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE \`users\` CHANGE \`username\` \`username\` varchar(255) NOT NULL`,
    );
  }
}
