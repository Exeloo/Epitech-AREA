import { Logger } from "@nestjs/common";
import {
  ConnectedSocket,
  MessageBody,
  SubscribeMessage,
  WebSocketGateway,
} from "@nestjs/websockets";
import { Socket } from "socket.io";
import { ITriggerInput } from "src/domain/applet/types/trigger-input.type";

import { AppletService } from "@domain/applet/applet.service";
import { AuthService } from "@domain/auth/auth.service";

@WebSocketGateway({
  cors: true,
  namespace: "websocket/providers",
  transports: ["websocket"],
})
export class ProviderGateway {
  private readonly logger: Logger;

  constructor(
    private readonly authService: AuthService,
    private readonly appletService: AppletService,
  ) {
    this.logger = new Logger("ProviderGateway");
  }

  @SubscribeMessage("identify")
  async handleIdentify(
    @ConnectedSocket() client: Socket,
    @MessageBody() data: { apiKey: string },
  ): Promise<{ apiKey: string }> {
    try {
      this.logger.debug(`Try to identify ${data}`);
      const provider = await this.authService.authApiKey(data.apiKey);
      client.join(provider.providerId);
      client.emit("ok");
      this.logger.log(`Provider identified ${provider.providerId}`);
    } catch (e) {
      this.logger.error(e);
      client.emit("error", e);
    }
    return data;
  }

  @SubscribeMessage("trigger")
  handleTrigger(
    @ConnectedSocket() client: Socket,
    @MessageBody() data: ITriggerInput,
  ) {
    try {
      if (client.rooms.size === 0) {
        client.emit("error", {
          message: "Not identified",
        });
        return data;
      }
      return this.appletService.handleTrigger(client.rooms, data);
    } catch (e) {
      this.logger.error(e);
      client.emit("error", e);
    }
    return data;
  }
}
