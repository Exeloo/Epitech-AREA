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
    this.redirectUri = `${this.baseUri}/area/oauth/google/callback`;
    this.clientId = configService.getOrThrow("GOOGLE_CLIENT_ID");
    this.clientSecret = configService.getOrThrow("GOOGLE_CLIENT_SECRET");
  }

  async getToken(userId: number, providerId: string): Promise<string> {
    const { token } = await this.repository.findOneByOrFail({
      userId: userId,
      providerId: providerId,
    });
    return `Bearer ${token}`;
  }

  async getOAuthUrl(body: { state: string }): Promise<{ baseUrl: string }> {
    return {
      baseUrl: `https://accounts.google.com/o/oauth2/v2/auth?client_id=${this.clientId}&redirect_uri=${this.redirectUri}&state=${body.state}&response_type=code&scope=https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile https://mail.google.com/ https://www.googleapis.com/auth/gmail.settings.sharing`,
    };
  }

  async runOAuth(input: { code: string; state: string }): Promise<void> {
    const userId = JSON.parse(Buffer.from(input.state, "base64").toString());
    const {
      data: { access_token: token, token_type },
    } = await firstValueFrom(
      this.httpService.post("https://www.googleapis.com/oauth2/v4/token", {
        client_id: this.clientId,
        client_secret: this.clientSecret,
        code: input.code,
        grant_type: "authorization_code",
        redirect_uri: this.redirectUri,
      }),
    );
    const { data } = await firstValueFrom(
      this.httpService.get("https://www.googleapis.com/oauth2/v3/userinfo", {
        headers: {
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
