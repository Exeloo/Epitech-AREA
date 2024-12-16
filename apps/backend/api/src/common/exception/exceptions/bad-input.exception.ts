import { HttpStatusCode } from "axios";

import { BaseException, ExceptionOptions } from "../common/base.exception";

export class BadInputException extends BaseException {
  constructor(code: string, response: string, options?: ExceptionOptions) {
    super(code, `BadInput: ${response}`, HttpStatusCode.BadRequest, options);
  }
}
