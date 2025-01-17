import {
  Column,
  CreateDateColumn,
  Entity,
  ManyToOne,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from "typeorm";

import { ID } from "@d-type/id.type";

import { AppletNodeType } from "../../../../domain/applet/node/enums/applet-node.type";
import { AppletNodeRelationEntity } from "./applet-node-relations.entity";
import { AppletEntity } from "./applet.entity";
import { ProviderEntity } from "./provider.entity";

@Entity("applet_nodes")
export class AppletNodeEntity {
  @PrimaryGeneratedColumn()
  id: ID;

  @ManyToOne(() => ProviderEntity)
  provider?: ProviderEntity;

  @ManyToOne(() => AppletEntity, { onDelete: "CASCADE" })
  applet?: AppletEntity;

  @Column({ type: "varchar" })
  actionId: string;

  @Column({ type: "enum", enum: AppletNodeType })
  actionType: AppletNodeType;

  @Column({ type: "json" })
  input: object;

  @OneToMany(() => AppletNodeRelationEntity, (relation) => relation.second, {
    onDelete: "CASCADE",
  })
  previous?: AppletNodeRelationEntity[];

  @OneToMany(() => AppletNodeRelationEntity, (relation) => relation.first, {
    onDelete: "CASCADE",
  })
  next?: AppletNodeRelationEntity[];

  @CreateDateColumn()
  createdAt: Date;

  @UpdateDateColumn()
  updatedAt: Date;
}
