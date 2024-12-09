import { Request, Response } from "express";

export interface IAuthController {
  auth(): void;
  callback(req: Request, res: Response): Promise<{ baseUrl: string }>;
}
