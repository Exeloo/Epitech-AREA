import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity("accounts")
export class AccountEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({
    type: "int",
  })
  userId: number;

  @Column({
    type: "varchar",
  })
  providerId: string;

  @Column({
    type: "varchar",
    length: 512,
  })
  token: string;
}
