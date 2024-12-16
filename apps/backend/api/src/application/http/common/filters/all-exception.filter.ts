import {
  ArgumentsHost,
  Catch,
  ExceptionFilter,
  HttpException,
  HttpStatus,
  Logger,
} from "@nestjs/common";
import { Request, Response } from "express";

import { AppEnvEnum } from "~/config/validations/env.validation";

@Catch()
export class AllExceptionFilter implements ExceptionFilter {
  private logger = new Logger();

  catch(exception: HttpException, host: ArgumentsHost) {
    const ctx = host.getArgs();
    const req: Request = ctx[2].req;
    const res: Response = req?.res;

    res
      ?.status(this.getStatusCode(exception))
      .json(this.formatError(exception));
  }

  private formatError(exception: Error) {
    return {
      status: "error",
      statusCode: this.getStatusCode(exception),
      error: this.getError(exception),
    };
  }

  private getStatusCode(exception: Error) {
    if (exception instanceof HttpException) return exception.getStatus();
    return HttpStatus.INTERNAL_SERVER_ERROR;
  }

  private getError(exception: Error) {
    const values = this.parseError(exception);
    return {
      code: values.code,
      message: values.message,
      details: values.details,
      timestamp: new Date().toISOString(),
      trace: values.trace,
      cause: this.getCause(exception),
    };
  }

  private parseError(exception: Error) {
    const defaults = {
      code: "INTERNAL_SERVER_ERROR",
      message: "Internal Server Error: Unknown error",
      details: undefined,
      trace: -2,
    };
    if (exception instanceof HttpException) {
      const response = exception.getResponse();
      if (typeof response == "string") {
        defaults.message = response;
        defaults.trace = -1;
      } else {
        defaults.code =
          typeof response["code"] == "number" ? undefined : response["code"];
        defaults.message = response["message"];
        defaults.trace = response["trace"] ?? response["code"];
        defaults.details = response["details"];
      }
    }
    return defaults;
  }

  private getCause(exception: Error) {
    if (process.env.APP_ENV != AppEnvEnum.LOCAL) return undefined;
    let cause: any = exception;
    if (exception instanceof HttpException) {
      cause = exception.cause;
    }
    if (cause instanceof Error) {
      return {
        stack: cause.stack,
      };
    }
    return {
      message: cause,
    };
  }
}
