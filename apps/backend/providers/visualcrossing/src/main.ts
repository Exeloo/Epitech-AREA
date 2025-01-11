import {ValidationPipe} from "@nestjs/common";
import {ConfigService} from "@nestjs/config";
import {NestFactory} from "@nestjs/core";
import {DocumentBuilder, SwaggerModule} from "@nestjs/swagger";
import * as bodyParser from "body-parser";
import {useContainer} from "class-validator";
import "dotenv/config";
import helmet from "helmet";

import {AppModule} from "./app.module";
import {AppEnvEnum} from "./config/validations/env.validation";

const rawBodyBuffer = (req, _, buffer, encoding) => {
  if (buffer && buffer.length) {
    req.rawBody = buffer.toString(encoding ?? "utf8");
  }
};

const bootstrap = async () => {
  const app = await NestFactory.create(AppModule, {
    bodyParser: false,
    bufferLogs: true,
  });
  // app.useLogger(app.get(WINSTON_MODULE_NEST_PROVIDER));

  const configService = app.get(ConfigService);
  const env = configService.getOrThrow("APP_ENV");
  const port = +configService.getOrThrow("APP_PORT");
  const domains = configService.getOrThrow("APP_DOMAINS");

  app.use(
    helmet({
      contentSecurityPolicy: {
        directives: {
          scriptSrc: [`'self'`, `https: 'unsafe-inline'`, `'unsafe-eval'`],
          frameAncestors: domains.split(",") ?? ["'none'"],
        },
      },
    }),
  );
  app.enableCors({ origin: domains.split(",") });

  useContainer(app.select(AppModule), { fallbackOnErrors: true });
  app.useGlobalPipes(
    new ValidationPipe({ transform: true, enableDebugMessages: true }),
  );

  app.use(bodyParser.urlencoded({ verify: rawBodyBuffer, extended: true }));
  app.use(bodyParser.json({ verify: rawBodyBuffer }));

  if (env === AppEnvEnum.LOCAL) {
    const swagger = new DocumentBuilder()
      .setTitle("Aether Provider - VisualCrossing")
      .setDescription("The Aether Provider for VisualCrossing API")
      .setVersion("1.0")
      .addApiKey(
        {
          type: "apiKey",
          name: "api-key",
          in: "header",
          description: "API Key For External calls",
        },
        "api-key",
      )
      .build();

    const document = SwaggerModule.createDocument(app, swagger);
    SwaggerModule.setup("docs", app, document);
  }

  await app.listen(port);
};
bootstrap();
