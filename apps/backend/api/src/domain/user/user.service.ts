import { Inject } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import { generateKey } from "@utils/key-generator.utils";

import { AuthService } from "@domain/auth/auth.service";
import {
  IUserCreateInput,
  IUserInput,
  IUserRegisterInput,
  IUserUpdateInput,
} from "@domain/user/dto/user.input.type";
import { IUser } from "@domain/user/dto/user.type";
import {
  IUserPersistenceRepository,
  USER_PERSISTENCE_REPOSITORY,
} from "@domain/user/user.repository.type";

export class UserService {
  constructor(
    @Inject(USER_PERSISTENCE_REPOSITORY)
    private readonly userPRepository: IUserPersistenceRepository,
    private readonly authService: AuthService,
  ) {}

  private create(input: IUserInput): Promise<IUser> {
    return this.userPRepository.createEntity(input);
  }

  private update(id: ID, input: IUserUpdateInput): Promise<IUser> {
    return this.userPRepository.updateEntity(id, input);
  }

  getById(id: ID): Promise<IUser> {
    return this.userPRepository.getById(id);
  }

  getByEmail(email: string): Promise<IUser | null> {
    return this.userPRepository.getByEmail(email);
  }

  async createUser(input: IUserCreateInput): Promise<IUser> {
    const currUser = await this.getByEmail(input.email);
    if (currUser) {
      throw Error; // @todo Error User Already exist
    }
    const password = input.password ?? generateKey();

    return this.create({
      ...input,
      password: await this.authService.hashPassword(password),
      picture: null,
    });
  }

  registerUser(input: IUserRegisterInput): Promise<IUser> {
    return this.createUser({
      ...input,
      pronoun: null,
      description: null,
    });
  }
}
