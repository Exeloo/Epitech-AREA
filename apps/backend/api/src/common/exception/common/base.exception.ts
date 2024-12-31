import { HttpException } from "@nestjs/common";
import { HttpExceptionOptions } from "@nestjs/common/exceptions/http.exception";
import { HttpStatusCode } from "axios";

export type ExceptionOptions = {
  trace?: number | string;
  details?: string;
} & HttpExceptionOptions;

export class BaseException extends HttpException {
  constructor(
    code: number | string,
    response: string,
    status: HttpStatusCode,
    options?: ExceptionOptions,
  ) {
    super(
      {
        code,
        message: response,
        trace: options?.trace,
        details: options?.details,
      },
      status,
      options,
    );
  }
}
