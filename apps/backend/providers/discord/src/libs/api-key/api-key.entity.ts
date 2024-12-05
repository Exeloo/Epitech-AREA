import {
  Column,
  CreateDateColumn,
  Entity,
  PrimaryGeneratedColumn,
  Unique,
  UpdateDateColumn,
} from "typeorm";

@Entity()
@Unique(["key"])
export class ApiKey {
  @PrimaryGeneratedColumn()
  id: number;

  @Column("char", { length: 50 })
  key: string;

  @Column("datetime", { nullable: true, default: null })
  lastUsedAt: Date | null;

  @CreateDateColumn()
  createdAt: Date;

  @UpdateDateColumn()
  updatedAt: Date;
}
