import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from "typeorm";

import { ID } from "@d-type/id.type";

import { AppletNodeEntity } from "./applet-node.entity";

@Entity("applet_nodes_relations")
export class AppletNodeRelationEntity {
  @PrimaryGeneratedColumn()
  id: ID;

  @Column({ type: "int" })
  firstId: ID;

  @ManyToOne(() => AppletNodeEntity)
  first?: AppletNodeEntity;

  @Column({ type: "int" })
  secondId: ID;

  @ManyToOne(() => AppletNodeEntity)
  second?: AppletNodeEntity;
}
