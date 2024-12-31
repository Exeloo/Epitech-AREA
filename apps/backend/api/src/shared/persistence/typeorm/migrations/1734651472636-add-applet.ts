import { MigrationInterface, QueryRunner } from "typeorm";

export class AddApplet1734651472636 implements MigrationInterface {
  name = "AddApplet1734651472636";

  public async up(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `CREATE TABLE \`applet_nodes_relations\` (\`id\` int NOT NULL AUTO_INCREMENT, \`first_id\` int NOT NULL, \`second_id\` int NOT NULL, PRIMARY KEY (\`id\`)) ENGINE=InnoDB`,
    );
    await queryRunner.query(
      `CREATE TABLE \`applets\` (\`id\` int NOT NULL AUTO_INCREMENT, \`name\` varchar(255) NOT NULL, \`description\` varchar(255) NULL, \`created_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), \`updated_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6), \`owner_id\` int NULL, PRIMARY KEY (\`id\`)) ENGINE=InnoDB`,
    );
    await queryRunner.query(
      `CREATE TABLE \`applet_nodes\` (\`id\` int NOT NULL AUTO_INCREMENT, \`action_id\` varchar(255) NOT NULL, \`action_type\` enum ('TRIGGER', 'ACTION') NOT NULL, \`input\` json NOT NULL, \`created_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), \`updated_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6), \`provider_id\` int NULL, \`applet_id\` int NULL, PRIMARY KEY (\`id\`)) ENGINE=InnoDB`,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` ADD CONSTRAINT \`FK_8d13af1a09bae033bdcee15d4ab\` FOREIGN KEY (\`first_id\`) REFERENCES \`applet_nodes\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` ADD CONSTRAINT \`FK_1bd4db75938045ada838c002ab7\` FOREIGN KEY (\`second_id\`) REFERENCES \`applet_nodes\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE \`applets\` ADD CONSTRAINT \`FK_8a6d4c81ab80e83851ab45d7594\` FOREIGN KEY (\`owner_id\`) REFERENCES \`users\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes\` ADD CONSTRAINT \`FK_3a7998a29d38ecd3e5bdbee092f\` FOREIGN KEY (\`provider_id\`) REFERENCES \`providers\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes\` ADD CONSTRAINT \`FK_23c545d7ef6005d8d46a7d645d9\` FOREIGN KEY (\`applet_id\`) REFERENCES \`applets\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`,
    );
  }

  public async down(queryRunner: QueryRunner): Promise<void> {
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes\` DROP FOREIGN KEY \`FK_23c545d7ef6005d8d46a7d645d9\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes\` DROP FOREIGN KEY \`FK_3a7998a29d38ecd3e5bdbee092f\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`applets\` DROP FOREIGN KEY \`FK_8a6d4c81ab80e83851ab45d7594\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` DROP FOREIGN KEY \`FK_1bd4db75938045ada838c002ab7\``,
    );
    await queryRunner.query(
      `ALTER TABLE \`applet_nodes_relations\` DROP FOREIGN KEY \`FK_8d13af1a09bae033bdcee15d4ab\``,
    );
    await queryRunner.query(`DROP TABLE \`applet_nodes\``);
    await queryRunner.query(`DROP TABLE \`applets\``);
    await queryRunner.query(`DROP TABLE \`applet_nodes_relations\``);
  }
}
