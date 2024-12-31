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

import { AppletNodeEntity } from "./applet-node.entity";
import { UserEntity } from "./user.entity";

@Entity("applets")
export class AppletEntity {
  @PrimaryGeneratedColumn()
  id: ID;

  @Column({ type: "varchar" })
  name: string;

  @Column({ type: "varchar", nullable: true })
  description: string | null;

  @ManyToOne(() => UserEntity)
  owner?: UserEntity;

  @OneToMany(() => AppletNodeEntity, (node) => node.applet)
  nodes?: AppletNodeEntity[];

  @CreateDateColumn()
  createdAt: Date;

  @UpdateDateColumn()
  updatedAt: Date;
}
