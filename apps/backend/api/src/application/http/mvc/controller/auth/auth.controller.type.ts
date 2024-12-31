import { Request, Response } from "express";

export interface IAuthController {
  auth(req: Request): void;
  callback(req: Request, res: Response): Promise<{ baseUrl: string }>;
}
