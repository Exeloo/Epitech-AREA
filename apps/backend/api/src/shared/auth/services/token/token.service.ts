import { Inject, Injectable } from "@nestjs/common";

import { ID } from "@d-type/id.type";

import { AuthorizationException } from "@exception";

import { IAuthToken } from "@domain/auth/types/token.auth.type";
import { IUser } from "@domain/user/types/user.type";
import {
  IUserPersistenceRepository,
  USER_PERSISTENCE_REPOSITORY,
} from "@domain/user/user.repository.type";

import { TokenEncryptor } from "~/shared/auth/services/token/token.encryptor";
import { TokenEnum } from "~/shared/auth/services/token/token.enum";

@Injectable()
export class TokenService {
  constructor(
    private readonly tokenEncryptor: TokenEncryptor,
    @Inject(USER_PERSISTENCE_REPOSITORY)
    private readonly userPRepository: IUserPersistenceRepository,
  ) {}

  async verifyAccessToken(token: string): Promise<IUser | null> {
    return this.verifyToken(token, TokenEnum.ACCESS);
  }

  async refreshToken(refreshToken: string): Promise<IAuthToken> {
    const user = await this.verifyToken(refreshToken, TokenEnum.REFRESH);
    if (!user) {
      throw new AuthorizationException(6, "Invalid refresh token");
    }
    return this.generateToken(user.id);
  }

  async generateToken(id: ID): Promise<IAuthToken> {
    return {
      token: this.tokenEncryptor.encrypt({ userId: id }, TokenEnum.ACCESS),
      refreshToken: this.tokenEncryptor.encrypt(
        { userId: id },
        TokenEnum.REFRESH,
      ),
      tokenExpiresAt: this.tokenEncryptor.getExpiration(TokenEnum.ACCESS),
    };
  }

  private async verifyToken(
    token: string,
    type: TokenEnum,
  ): Promise<IUser | null> {
    const payload = this.tokenEncryptor.verify(token, type);
    try {
      return await this.userPRepository.getById(payload.userId);
    } catch {
      return null;
    }
  }
}
