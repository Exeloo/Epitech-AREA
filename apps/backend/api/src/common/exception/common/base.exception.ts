import { HttpException } from "@nestjs/common";
import { HttpExceptionOptions } from "@nestjs/common/exceptions/http.exception";
import { HttpStatusCode } from "axios";

export class BaseException extends HttpException {
  constructor(
    code: number,
    response: string,
    status: HttpStatusCode,
    options?: HttpExceptionOptions,
  ) {
    super(
      {
        message: response,
        code,
      },
      status,
      options,
    );
  }
}
