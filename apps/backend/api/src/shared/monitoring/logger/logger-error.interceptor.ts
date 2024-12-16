import {
  CallHandler,
  ExecutionContext,
  Injectable,
  Logger,
  NestInterceptor,
} from "@nestjs/common";
import { Observable, catchError, throwError } from "rxjs";

import { InternalException } from "@exception";

import { BaseException } from "~/common/exception/common/base.exception";
import { AppEnvEnum } from "~/config/validations/env.validation";

@Injectable()
export class LoggerErrorInterceptor implements NestInterceptor {
  private logger = new Logger("API ERROR");

  intercept(
    context: ExecutionContext,
    next: CallHandler,
  ): Observable<any> | Promise<Observable<any>> {
    return next.handle().pipe(
      catchError((error) => {
        if (error instanceof InternalException) {
          return throwError(() => {
            this.logger.error(error.cause);
            return error;
          });
        }
        if (error instanceof BaseException) {
          return throwError(() => {
            if (process.env.APP_ENV == AppEnvEnum.LOCAL)
              this.logger.error(error.cause);
            else this.logger.warn(error.cause);
            return error;
          });
        }
        return throwError(() => {
          this.logger.error(error);
          return error;
        });
      }),
    );
  }
}
