import {
  Column,
  CreateDateColumn,
  DeleteDateColumn,
  Entity,
  PrimaryGeneratedColumn,
  UpdateDateColumn,
} from "typeorm";

import { Nullable } from "@type/nullable.type";

import { ID } from "@d-type/id.type";

@Entity({ name: "users" })
export class UserEntity {
  @PrimaryGeneratedColumn()
  id: ID;

  @Column({
    type: "varchar",
    unique: true,
  })
  email: string;

  @Column()
  password: string;

  @Column({
    type: "varchar",
    unique: true,
  })
  username: string;

  @Column()
  firstName: string;

  @Column()
  lastName: string;

  @Column({
    type: "varchar",
    nullable: true,
  })
  pronoun: string | null;

  @Column({
    type: "varchar",
    nullable: true,
  })
  picture: string | null;

  @Column({
    type: "text",
    nullable: true,
  })
  description: string | null;

  @Column({
    type: "datetime",
    default: () => "CURRENT_TIMESTAMP",
  })
  lastConnection: Date;

  @CreateDateColumn()
  createdAt: Date;

  @UpdateDateColumn()
  updatedAt: Date;

  @DeleteDateColumn()
  deletedAt: Nullable<Date>;
}
