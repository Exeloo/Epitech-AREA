import {
  ArgumentsHost,
  Catch,
  ExceptionFilter,
  HttpException,
  Logger,
} from "@nestjs/common";
import { Request, Response } from "express";

@Catch()
export class AllExceptionFilter implements ExceptionFilter {
  private logger = new Logger();

  catch(exception: HttpException, host: ArgumentsHost) {
    const ctx = host.getArgs();
    const req: Request = ctx[2].req;
    const res: Response = req?.res;
    if (exception instanceof HttpException) {
      const status = exception.getStatus();

      res?.status(status).json({
        error: exception.getResponse(),
        statusCode: status,
        timestamp: new Date().toISOString(),
      });
    } else {
      res?.status(500).json({
        error: {
          message: "Internal Server Error: Unknown error",
          code: -1,
        },
        statusCode: 500,
        timestamp: new Date().toISOString(),
      });
    }
  }
}
