import { HttpStatusCode } from "axios";

import { BaseException, ExceptionOptions } from "../common/base.exception";

export class AuthorizationException extends BaseException {
  constructor(code: string, response: string, options?: ExceptionOptions) {
    super(
      code,
      `Unauthorized: ${response}`,
      HttpStatusCode.Unauthorized,
      options,
    );
  }
}
