import {
  Column,
  CreateDateColumn,
  Entity,
  OneToMany,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from "typeorm";

import { ID } from "@d-type/id.type";

import { ProviderVisibility } from "../../../../domain/provider/enums/provider-visibility.enum";
import { AppletNodeEntity } from "./applet-node.entity";

@Entity({ name: "providers" })
export class ProviderEntity {
  @PrimaryGeneratedColumn()
  id: ID;

  @Column({
    type: "varchar",
  })
  name: string;

  @Column({
    type: "varchar",
  })
  description: string;

  @Column({
    type: "varchar",
  })
  img: string;

  @Column({
    type: "varchar",
  })
  color: string;

  @Column({
    type: "varchar",
    unique: true,
  })
  providerId: string;

  @Column()
  host: string;

  @Column({
    type: "enum",
    enum: ProviderVisibility,
    default: ProviderVisibility.PRIVATE,
  })
  visibility: ProviderVisibility;

  @OneToMany(() => AppletNodeEntity, (node) => node.provider)
  appletNodes?: AppletNodeEntity[];

  @CreateDateColumn()
  createdAt: Date;

  @UpdateDateColumn()
  updatedAt: Date;
}
