import { Logger, OnModuleInit } from "@nestjs/common";
import { ObjectLiteral } from "@type/object.type";

export abstract class WebSocketClient<T extends ObjectLiteral>
  implements OnModuleInit
{
  protected socket: WebSocket;
  protected readonly logger: Logger = new Logger("WebSocketClient");
  protected url: string;
  private keepAlive: boolean = true;

  protected constructor(name: string, url: string) {
    this.logger = new Logger(`WebSocket (${name})`);
    this.url = url;
  }

  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  onOpen(_event: Event): void {}

  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  onClose(_event: CloseEvent): void {}

  abstract onMessage(data: T, event: Event): void;

  connect(): void {
    this.close();
    this.socket = new WebSocket(this.url);
    this.socket.onopen = (event: Event) => {
      this.logger.log("Connection opened with provider");
      this.onOpen(event);
    };
    this.socket.onclose = (event: CloseEvent) => {
      this.logger.debug("Connection with provider closed");
      this.logger.debug("Closed event", event.reason);
      if (this.keepAlive)
        setTimeout(() => {
          this.connect();
        }, 1000);
      this.onClose(event);
    };
    this.socket.onmessage = (event: MessageEvent) => {
      this.logger.debug("Message received from the provider");
      const data = JSON.parse(event.data);
      // this.logger.debug("Received data", data);
      this.onMessage(data, event);
    };
  }

  close(): void {
    if (!this.socket) return;
    this.socket.close();
    this.socket = null;
  }

  onModuleInit() {
    this.connect();
  }

  send(message: any): void {
    this.logger.debug("Message sent to the provider");
    this.socket.send(JSON.stringify(message));
  }

  protected setKeepAlive(keepAlive: boolean) {
    this.keepAlive = keepAlive;
  }
}
