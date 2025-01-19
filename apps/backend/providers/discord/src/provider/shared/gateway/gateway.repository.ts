import {Injectable} from "@nestjs/common";
import {ConfigService} from "@nestjs/config";
import {SchedulerRegistry} from "@nestjs/schedule";

import {WebSocketClient} from "@lib/websocket";

import {EventsEnum} from "~/provider/shared/event/event.enum";
import {EventService} from "~/provider/shared/event/event.service";

enum OPCode {
  Dispatch = 0,
  Heartbeat = 1,
  Identify = 2,
  Presence_Update = 3,
  Voice_State_Update = 4,
  Resume = 6,
  Reconnect = 7,
  Request_Guild_Members = 8,
  Invalid_Session = 9,
  Hello = 10,
  Heartbeat_ACK = 11,
  Request_Soundboard_Sounds = 31,
}

interface DiscordPayload {
  op: OPCode;
  t?: string | null;
  s?: string | null;
  d?: any | null;
}

@Injectable()
export class GatewayRepository extends WebSocketClient<any> {
  private heartBeatRes: boolean = false;

  constructor(
    private readonly configService: ConfigService,
    private readonly schedulerRegistry: SchedulerRegistry,
    private readonly eventEmitter: EventService,
  ) {
    super("Discord", configService.getOrThrow("PROVIDER_GATEWAY_URL"));
  }

  onOpen() {
    this.handleStart();
  }

  onMessage(data: DiscordPayload): void {
    const cbs = new Map<OPCode, () => void>([
      [OPCode.Dispatch, () => this.handleDispatch(data)],
      [OPCode.Hello, () => this.handleHeartBeat(data)],
      [OPCode.Heartbeat_ACK, () => this.handleHeartbeatResponse()],
    ]);
    if (cbs.has(data.op)) cbs.get(data.op)();
  }

  onClose(): void {
    if (this.schedulerRegistry.doesExist("timeout", "heart-beat"))
      this.schedulerRegistry.deleteTimeout("heart-beat");
    if (this.schedulerRegistry.doesExist("interval", "heart-beat"))
      this.schedulerRegistry.deleteInterval("heart-beat");
  }

  send(message: DiscordPayload): void {
    this.logger.debug("Message sent to the provider");
    this.socket.send(
      JSON.stringify({
        t: null,
        s: null,
        d: null,
        ...message,
      }),
    );
  }

  handleStart(): void {
    this.send({
      op: OPCode.Identify,
      d: {
        token: `Bot ${this.configService.getOrThrow("DISCORD_TOKEN")}`,
        properties: {
          os: "linux",
          browser: "area",
          device: "area",
        },
        intents: 53606143,
      },
    });
    this.logger.log("Send identify");
  }

  handleHeartBeat(data: DiscordPayload): void {
    const heartBeat = data.d?.heartbeat_interval ?? 45000;
    const tm = setTimeout(() => {
      this.send({
        op: OPCode.Heartbeat,
      });
      this.logger.log("Send first heartbeat");
      this.heartBeatRes = false;
      const itv = setInterval(() => {
        if (!this.heartBeatRes) return this.close();
        this.send({
          op: OPCode.Heartbeat,
        });
        this.logger.log("Send heartbeat");
        this.heartBeatRes = false;
      }, heartBeat);
      this.schedulerRegistry.addInterval("heart-beat", itv);
    }, Math.random() * heartBeat);
    this.schedulerRegistry.addTimeout("heart-beat", tm);
  }

  handleHeartbeatResponse(): void {
    this.heartBeatRes = true;
  }

  handleDispatch(data: DiscordPayload): void {
    if (!(data.t in EventsEnum)) return;
    this.eventEmitter.emit(data.t as EventsEnum, [data.d]);
  }
}
