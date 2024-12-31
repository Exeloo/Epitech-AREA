import { Injectable } from "@nestjs/common";
import * as bcrypt from "bcryptjs";

import { InternalException } from "@exception";

@Injectable()
export class PasswordEncryptor {
  async encrypt(password: string): Promise<string> {
    try {
      return await bcrypt.hash(password, 10);
    } catch (error) {
      throw new InternalException(1, {
        cause: error,
      });
    }
  }

  async compare(rawPassword: string, hashPassword: string): Promise<boolean> {
    try {
      return await bcrypt.compare(rawPassword, hashPassword);
    } catch (error) {
      throw new InternalException(2, {
        cause: error,
      });
    }
  }
}
