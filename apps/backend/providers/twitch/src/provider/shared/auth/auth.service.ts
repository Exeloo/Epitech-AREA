import { Injectable } from "@nestjs/common";

@Injectable()
export class AuthService {
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  async getToken(_userId: number, _ownerId: string): Promise<string> {
    const token = "ex6prg6h2x1lf0rppdp2sxx1dobxfa";
    return `Bearer ${token}`;
  }
}
