import { MigrationInterface, QueryRunner } from "typeorm";

export class SetAppletCascade1737155119129 implements MigrationInterface {
  name = "SetAppletCascade1737155119129";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` DROP FOREIGN KEY \`FK_1bd4db75938045ada838c002ab7\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` DROP FOREIGN KEY \`FK_8d13af1a09bae033bdcee15d4ab\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes\` DROP FOREIGN KEY \`FK_23c545d7ef6005d8d46a7d645d9\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` ADD CONSTRAINT \`FK_8d13af1a09bae033bdcee15d4ab\` FOREIGN KEY (\`first_id\`) REFERENCES \`applet_nodes\`(\`id\`) ON DELETE CASCADE ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` ADD CONSTRAINT \`FK_1bd4db75938045ada838c002ab7\` FOREIGN KEY (\`second_id\`) REFERENCES \`applet_nodes\`(\`id\`) ON DELETE CASCADE ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes\` ADD CONSTRAINT \`FK_23c545d7ef6005d8d46a7d645d9\` FOREIGN KEY (\`applet_id\`) REFERENCES \`applets\`(\`id\`) ON DELETE CASCADE ON UPDATE NO ACTION`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes\` DROP FOREIGN KEY \`FK_23c545d7ef6005d8d46a7d645d9\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` DROP FOREIGN KEY \`FK_1bd4db75938045ada838c002ab7\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` DROP FOREIGN KEY \`FK_8d13af1a09bae033bdcee15d4ab\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes\` ADD CONSTRAINT \`FK_23c545d7ef6005d8d46a7d645d9\` FOREIGN KEY (\`applet_id\`) REFERENCES \`applets\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` ADD CONSTRAINT \`FK_8d13af1a09bae033bdcee15d4ab\` FOREIGN KEY (\`first_id\`) REFERENCES \`applet_nodes\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` ADD CONSTRAINT \`FK_1bd4db75938045ada838c002ab7\` FOREIGN KEY (\`second_id\`) REFERENCES \`applet_nodes\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
  }
}
