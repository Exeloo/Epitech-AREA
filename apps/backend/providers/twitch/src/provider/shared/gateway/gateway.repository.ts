import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { SchedulerRegistry } from "@nestjs/schedule";

import { WebSocketClient } from "@lib/websocket";

import { TriggerService } from "~/provider/services/trigger.service";
import { EventsEnum } from "~/provider/shared/event/event.enum";
import { EventService } from "~/provider/shared/event/event.service";

enum MessageType {
  Session_Welcome = "session_welcome",
  Session_Reconnect = "session_reconnect",
  Notification = "notification",
}

interface TwitchPayload {
  metadata: {
    message_id: string;
    message_type: MessageType;
    message_timestamp: string;
    subscription_type?: EventsEnum;
    subscription_version?: string;
  };
  payload: {
    subscription?: any;
    session?: any;
    event?: any;
  };
}

@Injectable()
export class GatewayRepository extends WebSocketClient<any> {
  private heartBeatRes: boolean = false;

  constructor(
    private readonly configService: ConfigService,
    private readonly schedulerRegistry: SchedulerRegistry,
    private readonly eventEmitter: EventService,
    private readonly triggerService: TriggerService,
  ) {
    super("Twitch", configService.getOrThrow("PROVIDER_GATEWAY_URL"));
  }

  onMessage(data: TwitchPayload): void {
    const cbs = new Map<MessageType, () => void>([
      [MessageType.Session_Welcome, () => this.handleStart(data)],
      [MessageType.Session_Reconnect, () => this.handleReconnect(data)],
      [MessageType.Notification, () => this.handleNotification(data)],
    ]);
    if (cbs.has(data.metadata.message_type))
      cbs.get(data.metadata.message_type)();
  }

  private async handleStart(data: TwitchPayload) {
    if (!data.payload.session) return;
    this.triggerService.setSession(data.payload.session.id);
    await this.triggerService.registerAllTriggersToProvider();
  }

  private handleReconnect(data: TwitchPayload) {
    if (!data.payload.session) return;
    this.url = data.payload.session.reconnect_url;
    this.connect();
  }

  private handleNotification(data: TwitchPayload) {
    this.eventEmitter.emit(data.metadata.subscription_type, data.payload.event);
  }
}
