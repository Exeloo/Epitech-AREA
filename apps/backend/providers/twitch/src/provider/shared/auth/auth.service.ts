import { Injectable } from "@nestjs/common";

@Injectable()
export class AuthService {
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  async getToken(_userId: number, _ownerId: string): Promise<string> {
    const token = "cf3ltcw8cubhljoan6qsbgauu1a8i9";
    return `Bearer ${token}`;
  }
}
