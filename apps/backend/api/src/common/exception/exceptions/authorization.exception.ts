import { HttpExceptionOptions } from "@nestjs/common/exceptions/http.exception";
import { HttpStatusCode } from "axios";

import { BaseException } from "../common/base.exception";

export class AuthorizationException extends BaseException {
  constructor(code: number, response: string, options?: HttpExceptionOptions) {
    super(
      code,
      `Unauthorized: ${response}`,
      HttpStatusCode.Unauthorized,
      options,
    );
  }
}
