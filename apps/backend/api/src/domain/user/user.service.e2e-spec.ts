import { faker } from "@faker-js/faker";
import { Test, TestingModule } from "@nestjs/testing";
import { MockFunctionMetadata, ModuleMocker } from "jest-mock";
import { DataSource } from "typeorm";

import { IUser } from "@domain/user/types/user.type";
import { UserService } from "@domain/user/user.service";

import { testDatabaseConfig } from "~/config/tests/database.test.config";
import { DomainTestingModule } from "~/config/tests/testing-modules/domain.testing-module";
import { UserEntity } from "~/shared/persistence/typeorm/entities/user.entity";

const moduleMocker = new ModuleMocker(global);

describe("UserService", () => {
  let service: UserService;
  const password = faker.internet.password();
  const user = {
    username: faker.internet.username(),
    email: `${faker.person.firstName()}.test@aether-area.fr`,
    firstName: faker.person.firstName(),
    lastName: faker.person.lastName(),
  };

  const updatedUser = {
    ...user,
    username: faker.internet.username(),
  };

  let registeredUser: IUser;

  beforeAll(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [DomainTestingModule],
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

    service = module.get<UserService>(UserService);
  });

  it("should be defined", () => {
    expect(service).toBeDefined();
  });

  describe("registerUser", () => {
    it("should register in an new user", async () => {
      const result = await service.registerUser({
        ...user,
        password: password,
      });

      expect(result).toHaveProperty("id");
      expect(result).toMatchObject(user);

      registeredUser = result;
    });

    it("should failed to logged in an existing user", async () => {
      await expect(
        service.registerUser({
          ...user,
          password: password,
        }),
      ).rejects.toThrow();
    });
  });

  describe("updateUser", () => {
    it("should update an existing user", async () => {
      const result = await service.updateUser(registeredUser.id, {
        ...user,
        username: updatedUser.username,
      });

      expect(result).toMatchObject(updatedUser);
    });

    it("should not update an nonexistent user", async () => {
      await expect(service.updateUser(-1, {})).rejects.toThrow();
    });
  });

  describe("getById", () => {
    it("should getById an existing user", async () => {
      const result = await service.getById(registeredUser.id);

      expect(result).toMatchObject(updatedUser);
    });

    it("should not getById an nonexistent user", async () => {
      await expect(service.getById(-1)).rejects.toThrow();
    });
  });

  describe("getByEmail", () => {
    it("should getByEmail an existing user", async () => {
      const result = await service.getByEmail(registeredUser.email);

      expect(result).toMatchObject(updatedUser);
    });

    it("should not getByEmail an nonexistent user", async () => {
      const result = await service.getByEmail("pierre@poche.com");

      expect(result).toBeNull();
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
