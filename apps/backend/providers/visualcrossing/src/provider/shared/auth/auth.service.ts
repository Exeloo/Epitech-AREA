import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

@Injectable()
export class AuthService {
  private readonly apiKey: string;

  constructor(configService: ConfigService) {
    this.apiKey = configService.getOrThrow("VISUALCROSSING_API_KEY");
  }

  getToken(): string {
    return this.apiKey;
  }
}
