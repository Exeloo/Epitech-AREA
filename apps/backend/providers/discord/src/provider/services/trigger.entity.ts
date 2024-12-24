import { ObjectLiteral } from "@type/object.type";
import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("triggers")
export class TriggerEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    type: "int",
  })
  baseId: number;

  @Column({
    type: "varchar",
  })
  actionId: string;

  @Column({
    type: "json",
  })
  input: ObjectLiteral;
}
