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
    this.redirectUri = `${this.baseUri}/area/oauth/linkedin/callback`;
    this.clientId = configService.getOrThrow("LINKEDIN_CLIENT_ID");
    this.clientSecret = configService.getOrThrow("LINKEDIN_CLIENT_SECRET");
  }

  async getToken(userId: number, ownerId?: string): Promise<string> {
    const { token } = await this.repository.findOneByOrFail({
      userId: userId,
      providerId: ownerId,
    });
    return `Bearer ${token}`;
  }

  async getOAuthUrl(body: { state: string }): Promise<{ baseUrl: string }> {
    return {
      baseUrl: `https://www.linkedin.com/oauth/v2/authorization?client_id=${this.clientId}&redirect_uri=${this.redirectUri}&state=${body.state}&response_type=code&scope=openid profile email`,
    };
  }

  async runOAuth(input: { code: string; state: string }): Promise<void> {
    const userId = JSON.parse(Buffer.from(input.state, "base64").toString());

    const {
      data: { access_token: token, token_type },
    } = await firstValueFrom(
      this.httpService.post(
        "https://www.linkedin.com/oauth/v2/accessToken",
        {
          client_id: this.clientId,
          client_secret: this.clientSecret,
          grant_type: "authorization_code",
          code: input.code,
          redirect_uri: this.redirectUri,
        },
        {
          headers: {
            Accept: "application/json",
            "Content-Type": "application/x-www-form-urlencoded",
          },
        },
      ),
    );

    const { data } = await firstValueFrom(
      this.httpService.get("https://api.linkedin.com/v2/userinfo", {
        headers: {
          Accept: "application/json",
          Authorization: `${token_type} ${token}`,
        },
      }),
    );

    const account = await this.repository.findOneBy({
      userId: userId,
      providerId: data.sub,
    });
    await this.repository.save({
      id: account?.id,
      userId: userId,
      providerId: data.sub,
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
