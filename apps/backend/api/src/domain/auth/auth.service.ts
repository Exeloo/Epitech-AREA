import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import { IAuthPasswordInput } from "@domain/auth/types/password.auth.type";
import {
  IAuthRefreshTokenInput,
  IAuthToken,
} from "@domain/auth/types/token.auth.type";
import {
  IUserPersistenceRepository,
  USER_PERSISTENCE_REPOSITORY,
} from "@domain/user/user.repository.type";

import { IUser } from "../user/types/user.type";
import { AUTH_SERVICE, IAuthService } from "./auth.repository.type";
import { StrategyEnum } from "./strategy/strategy.enum";

@Injectable()
export class AuthService {
  constructor(
    @Inject(AUTH_SERVICE)
    private readonly authService: IAuthService,
    @Inject(USER_PERSISTENCE_REPOSITORY)
    private readonly userPRepository: IUserPersistenceRepository,
  ) {}

  async login(input: IAuthPasswordInput): Promise<IAuthToken> {
    const user = await this.authPassword(input.email, input.password);
    return await this.authService.generateToken(user.id);
  }

  async refreshToken(input: IAuthRefreshTokenInput): Promise<IAuthToken> {
    const tokens = await this.authService.refreshToken(input.refreshToken);
    const user = await this.authToken(tokens.token);
    await this.updateLastConnection(user.id);
    return tokens;
  }

  updateLastConnection(id: ID): Promise<IUser> {
    return this.userPRepository.updateEntity(id, {
      lastConnection: new Date(Date.now()),
    });
  }

  hashPassword(password: string): Promise<string> {
    return this.authService.hashPassword(password);
  }

  authPassword(email: string, password: string): Promise<IUser> {
    return this.authService.authenticate(StrategyEnum.PASSWORD, {
      email,
      password,
    });
  }

  authToken(token: string): Promise<IUser> {
    return this.authService.authenticate(StrategyEnum.TOKEN, {
      token,
    });
  }
}
