import { Injectable } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";

import { ApiKey } from "./api-key.entity";

@Injectable()
export class ApiKeyService {
  constructor(
    @InjectRepository(ApiKey)
    private apiKeyRepository: Repository<ApiKey>,
  ) {}

  async validate(apiKey: string): Promise<boolean> {
    const apiKeyExists = await this.apiKeyRepository.findOne({
      where: { key: apiKey },
    });

    return apiKeyExists !== null;
  }

  async updateLastUse(apiKey: string): Promise<void> {
    await this.apiKeyRepository.update(
      { key: apiKey },
      {
        lastUsedAt: new Date(Date.now()),
      },
    );
  }
}
