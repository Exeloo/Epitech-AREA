import { IApplet } from "@domain/applet/types/applet.type";

export interface IAppletProcessor<T> {
  process(applet: IApplet, data: T): Promise<IApplet>;
}

export interface IAppletPreProcessor<T> {
  process(applet: IApplet, data: T): Promise<T>;
}
