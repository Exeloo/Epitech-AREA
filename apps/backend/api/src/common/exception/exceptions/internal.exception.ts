import { HttpStatusCode } from "axios";

import { BaseException, ExceptionOptions } from "../common/base.exception";

export class InternalException extends BaseException {
  constructor(trace: number, options?: ExceptionOptions) {
    super(
      "INTERNAL_SERVER_ERROR",
      "Internal server Error: Please retry and contact an administrator if the same error occurs",
      HttpStatusCode.InternalServerError,
      { ...options, trace },
    );
  }
}
