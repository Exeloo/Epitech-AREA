import { faker } from "@faker-js/faker";
import { Test, TestingModule } from "@nestjs/testing";
import { MockFunctionMetadata, ModuleMocker } from "jest-mock";
import { DataSource } from "typeorm";

import { UserService } from "@domain/user/user.service";

import { testDatabaseConfig } from "~/config/tests/database.test.config";
import { DomainTestingModule } from "~/config/tests/testing-modules/domain.testing-module";
import { UserEntity } from "~/shared/persistence/typeorm/entities/user.entity";

import { AuthResolver } from "./auth.resolver";

const moduleMocker = new ModuleMocker(global);

describe("AuthResolver", () => {
  let resolver: AuthResolver;
  let userService: UserService;
  const user = {
    username: faker.internet.username(),
    email: `${faker.person.firstName()}.test@aether-area.fr`,
    passwordClear: faker.internet.password(),
    firstName: faker.person.firstName(),
    lastName: faker.person.lastName(),
  };

  let refreshToken: string;

  beforeAll(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [DomainTestingModule],
      providers: [AuthResolver],
    })
      .useMocker((token) => {
        if (typeof token === "function") {
          const mockMetadata = moduleMocker.getMetadata(
            token,
          ) as MockFunctionMetadata<any, any>;
          const Mock = moduleMocker.generateFromMetadata(mockMetadata);
          return new Mock();
        }
      })
      .compile();

    resolver = module.get<AuthResolver>(AuthResolver);
    userService = module.get<UserService>(UserService);

    await userService.registerUser({
      ...user,
      password: user.passwordClear,
    });
  });

  it("should be defined", () => {
    expect(resolver).toBeDefined();
  });

  describe("login", () => {
    it("should logged in an existing user", async () => {
      const result = await resolver.login({
        email: user.email,
        password: user.passwordClear,
      });

      expect(result).toHaveProperty("token");
      expect(result).toHaveProperty("refreshToken");
      expect(result).toHaveProperty("tokenExpiresAt");

      refreshToken = result.refreshToken;
    });

    it("should failed to logged in an inexisting user", async () => {
      await expect(
        resolver.login({
          email: user.email,
          password: "test",
        }),
      ).rejects.toThrow();
    });

    it("should failed to logged in an inexisting user", async () => {
      await expect(
        resolver.login({
          email: "tartempion.test@aether-area.fr",
          password: "test",
        }),
      ).rejects.toThrow();
    });
  });

  describe("refreshToken", () => {
    it("should refresh an existing token", async () => {
      const result = await resolver.refreshToken({
        refreshToken,
      });

      expect(result).toHaveProperty("token");
      expect(result).toHaveProperty("refreshToken");
      expect(result).toHaveProperty("tokenExpiresAt");
    });

    it("should not refresh an inexisting token", async () => {
      await expect(
        resolver.refreshToken({
          refreshToken: "test",
        }),
      ).rejects.toThrow();
    });
  });

  afterAll(async () => {
    const dataSource = await new DataSource(testDatabaseConfig).initialize();
    await dataSource.getRepository(UserEntity).delete({});
    await dataSource.destroy();
    // avoid jest open handle error
    await new Promise((resolve) => setTimeout(() => resolve(""), 1000));
  });
});
