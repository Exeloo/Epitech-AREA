import {Injectable, Logger} from "@nestjs/common";
import {ConfigService} from "@nestjs/config";
import {io, Socket} from "socket.io-client";

@Injectable()
export class AppGateway {
  private readonly socket: Socket;
  private readonly logger: Logger;

  constructor(private readonly configService: ConfigService) {
    console.log(configService.getOrThrow("BASE_API_WS_URL"))
    this.socket = io(configService.getOrThrow("BASE_API_WS_URL"), {
      autoConnect: false,
      transports: ["websocket"],
    });
    this.logger = new Logger("AppGateway");
    this.connect();
  }

  connect() {
    if (this.socket.connected) this.socket.disconnect();

    this.socket.connect();
    this.socket.on("connect", () => {
      this.logger.log("Connected to the server");
      this.socket.emit("identify", {
        apiKey: this.configService.getOrThrow("API_KEY"),
      });
      this.logger.log(`Identify send to the server`);
    });
    this.socket.on("ok", () => {
      this.logger.log("Registered to the server");
    });
    this.socket.on("error", (err) => {
      this.logger.error(err);
    });
  }

  emit(trigger: string, triggered: number[], data: any) {
    this.socket.emit("trigger", {
      name: trigger,
      triggered: triggered,
      data: data,
    });
    this.logger.log(`Triggered event send (${trigger})`);
  }
}
