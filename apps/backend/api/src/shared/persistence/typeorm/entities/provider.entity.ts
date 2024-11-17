import { Column, CreateDateColumn, DeleteDateColumn, Entity, PrimaryGeneratedColumn, UpdateDateColumn } from "typeorm";

import { Nullable } from "@type/nullable.type";

import { ID } from "@d-type/id.type";

import { IIdentifiable } from "@domain/common/interfaces/models/identifiable.type";
import { ISoftDeletable } from "@domain/common/interfaces/models/soft-deletable.type";
import { ITimestampable } from "@domain/common/interfaces/models/timestampable.type";

@Entity()
export class ProviderEntity implements IIdentifiable, ITimestampable, ISoftDeletable {
  @PrimaryGeneratedColumn()
  id: ID;

  @Column()
  name: string;

  @CreateDateColumn()
  createdAt: Date;

  @UpdateDateColumn()
  updatedAt: Date;

  @DeleteDateColumn()
  deletedAt: Nullable<Date>;
}
