import { Inject } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import { generateRandomString } from "@utils/string.utils";

import { AUTH_SERVICE, IAuthService } from "@domain/auth/auth.repository.type";

import {
  IUserCreateInput,
  IUserInput,
  IUserRegisterInput,
  IUserUpdateInput,
} from "./types/user.input.type";
import { IUser } from "./types/user.type";
import {
  IUserPersistenceRepository,
  USER_PERSISTENCE_REPOSITORY,
} from "./user.repository.type";

export class UserService {
  constructor(
    @Inject(USER_PERSISTENCE_REPOSITORY)
    private readonly userPRepository: IUserPersistenceRepository,
    @Inject(AUTH_SERVICE)
    private readonly authService: IAuthService,
  ) {}

  getById(id: ID): Promise<IUser> {
    return this.userPRepository.getById(id);
  }

  getByEmail(email: string): Promise<IUser | null> {
    return this.userPRepository.getByEmail(email);
  }

  async createUser(input: IUserCreateInput): Promise<IUser> {
    const currUser = await this.getByEmail(input.email);
    if (currUser) {
      throw Error(); // @todo Error User Already exist
    }
    const password = input.password ?? generateRandomString(50);

    return this.create({
      ...input,
      password: await this.authService.hashPassword(password),
      picture: null,
    });
  }

  registerUser(input: IUserRegisterInput): Promise<IUser> {
    return this.createUser({
      username: null,
      pronoun: null,
      description: null,
      ...input,
    });
  }

  updateLastConnection(id: ID): Promise<IUser> {
    return this.update(id, {
      lastConnection: new Date(Date.now()),
    });
  }

  private create(input: IUserInput): Promise<IUser> {
    return this.userPRepository.createEntity(input);
  }

  private update(id: ID, input: IUserUpdateInput): Promise<IUser> {
    return this.userPRepository.updateEntity(id, input);
  }
}
