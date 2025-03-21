import { Args, Query, Resolver } from "@nestjs/graphql";

import { AuthService } from "@domain/auth/auth.service";

import { AuthPasswordInput } from "../dto/input/auth/password/password.auth.input";
import { AuthRefreshTokenInput } from "../dto/input/auth/token/refresh-token.auth.input";
import { AuthTokenResponse } from "../dto/response/auth/token.auth.response";

@Resolver("Auth")
export class AuthResolver {
  constructor(private readonly authService: AuthService) {}

  @Query(() => AuthTokenResponse, {
    description: "Query used to auth with password strategy",
  })
  login(
    @Args("data", { type: () => AuthPasswordInput }) data: AuthPasswordInput,
  ) {
    return this.authService.login(data);
  }

  @Query(() => AuthTokenResponse, {
    description: "Query used to refresh access token",
  })
  refreshToken(
    @Args("data", { type: () => AuthRefreshTokenInput })
    data: AuthRefreshTokenInput,
  ) {
    return this.authService.refreshToken(data);
  }
}
