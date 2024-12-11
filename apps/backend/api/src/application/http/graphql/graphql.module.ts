import { ApolloDriver, ApolloDriverConfig } from "@nestjs/apollo";
import { Module } from "@nestjs/common";
import { ConfigModule, ConfigService } from "@nestjs/config";
import { GraphQLModule } from "@nestjs/graphql";

import { DomainModule } from "@domain/domain.module";

import { graphqlConfig } from "~/config/graphql.config";

import { AppletResolver } from "./resolvers/applet.resolver";
import { AuthResolver } from "./resolvers/auth.resolver";
import { ProviderResolver } from "./resolvers/provider.resolver";
import { UserResolver } from "./resolvers/user.resolver";

@Module({
  imports: [
    ConfigModule.forRoot(),
    GraphQLModule.forRootAsync<ApolloDriverConfig>({
      driver: ApolloDriver,
      imports: [ConfigModule],
      useFactory: graphqlConfig,
      inject: [ConfigService],
    }),
    DomainModule,
  ],
  providers: [AppletResolver, AuthResolver, ProviderResolver, UserResolver],
})
export class GraphqlModule {}
