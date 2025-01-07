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
    this.redirectUri = `${this.baseUri}/area/oauth/twitch/callback`;
    this.clientId = configService.getOrThrow("TWITCH_CLIENT_ID");
    this.clientSecret = configService.getOrThrow("TWITCH_CLIENT_SECRET");
  }

  async getToken(userId: number, ownerId: string): Promise<string> {
    const { token } = await this.repository.findOneByOrFail({
      userId: userId,
      providerId: ownerId,
    });
    return `Bearer ${token}`;
  }

  async getOAuthUrl(body: { userId: number }): Promise<{ baseUrl: string }> {
    const state = Buffer.from(JSON.stringify(body)).toString("base64");
    return {
      baseUrl: `https://id.twitch.tv/oauth2/authorize?client_id=${this.clientId}&redirect_uri=${this.redirectUri}&state=${state}&response_type=code&scope=user:write:chat+user:read:chat`,
    };
  }

  async runOAuth(input: { code: string; state: string }): Promise<void> {
    const { userId } = JSON.parse(
      Buffer.from(input.state, "base64").toString(),
    );
    const {
      data: { access_token: token },
    } = await firstValueFrom(
      this.httpService.post("https://id.twitch.tv/oauth2/token", {
        client_id: this.clientId,
        client_secret: this.clientSecret,
        code: input.code,
        grant_type: "authorization_code",
        redirect_uri: this.redirectUri,
      }),
    );
    const {
      data: { user_id: providerId },
    } = await firstValueFrom(
      this.httpService.get("https://id.twitch.tv/oauth2/validate", {
        headers: {
          Authorization: `OAuth ${token}`,
        },
      }),
    );
    await this.repository.save({
      userId: userId,
      providerId: providerId,
      token: token,
    });
  }
}
