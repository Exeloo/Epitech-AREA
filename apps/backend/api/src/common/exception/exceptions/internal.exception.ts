import { HttpExceptionOptions } from "@nestjs/common/exceptions/http.exception";
import { HttpStatusCode } from "axios";

import { BaseException } from "../common/base.exception";

export class InternalException extends BaseException {
  constructor(code: number, options?: HttpExceptionOptions) {
    super(
      code,
      "Internal server Error: Please retry and contact an administrator if the same error occurs",
      HttpStatusCode.InternalServerError,
      options,
    );
  }
}
