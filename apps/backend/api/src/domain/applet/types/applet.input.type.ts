export interface IAppletSubscribeInput {
  name: string;

  // Supposed
  // nodes: {
  //   id: string;
  //   providerId: number;
  //   type: "trigger" | "action";
  //   input: object;
  // }[]

  // Temp
  channelIdInput: string;
  guildIdInput: string;
  message: string;

  channelIdOutput: string;
  guildIdOutput: string;
}
