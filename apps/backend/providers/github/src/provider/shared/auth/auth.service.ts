import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { InjectRepository } from "@nestjs/typeorm";
import { firstValueFrom } from "rxjs";
import { Repository } from "typeorm";

import { AccountEntity } from "~/provider/shared/auth/account.entity";

@Injectable()
export class AuthService {
  private readonly baseUri: string;
  private readonly redirectUri: string;
  private readonly clientId: string;
  private readonly clientSecret: string;

  constructor(
    configService: ConfigService,
    private readonly httpService: HttpService,
    @InjectRepository(AccountEntity)
    private readonly repository: Repository<AccountEntity>,
  ) {
    this.baseUri = configService.getOrThrow("PUBLIC_API_URL");
    this.redirectUri = `${this.baseUri}/area/oauth/github/callback`;
    this.clientId = configService.getOrThrow("GITHUB_CLIENT_ID");
    this.clientSecret = configService.getOrThrow("GITHUB_CLIENT_SECRET");
  }

  async getToken(userId: number, ownerId: string): Promise<string> {
    const { token } = await this.repository.findOneByOrFail({
      userId: userId,
      providerId: ownerId,
    });
    return `Bearer ${token}`;
  }

  async getOAuthUrl(body: { state: string }): Promise<{ baseUrl: string }> {
    return {
      baseUrl: `https://github.com/login/oauth/authorize?client_id=${this.clientId}&redirect_uri=${this.redirectUri}&state=${body.state}&response_type=code&scope=user:email`,
    };
  }

  async runOAuth(input: { code: string; state: string }): Promise<void> {
    const userId = JSON.parse(Buffer.from(input.state, "base64").toString());

    const {
      data: { access_token: token },
    } = await firstValueFrom(
      this.httpService.post(
        "https://github.com/login/oauth/access_token",
        {
          client_id: this.clientId,
          client_secret: this.clientSecret,
          code: input.code,
          redirect_uri: this.redirectUri,
        },
        {
          headers: {
            Accept: "application/json",
          },
        },
      ),
    );

    const { data } = await firstValueFrom(
      this.httpService.get("https://api.github.com/user", {
        headers: {
          Accept: "application/json",
          Authorization: `Bearer ${token}`,
        },
      }),
    );
    await this.repository.save({
      userId: userId,
      providerId: data.id.toString(),
      token: token,
    });
  }

  async getOAuthState(userId: number): Promise<{ authenticated: boolean }> {
    const accounts = await this.repository.findBy({
      userId: userId,
    });
    return {
      authenticated: accounts.length > 0,
    };
  }
}
