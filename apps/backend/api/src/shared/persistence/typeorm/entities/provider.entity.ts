import {
  Column,
  CreateDateColumn,
  Entity,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from "typeorm";

import { ID } from "@d-type/id.type";

import { ProviderVisibility } from "../../../../domain/provider/enums/provider-visibility.enum";

@Entity({ name: "providers" })
export class ProviderEntity {
  @PrimaryGeneratedColumn()
  id: ID;

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

  @CreateDateColumn()
  createdAt: Date;

  @UpdateDateColumn()
  updatedAt: Date;
}
