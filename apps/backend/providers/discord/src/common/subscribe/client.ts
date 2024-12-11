import { Client, GatewayIntentBits } from "discord.js";

import { events } from "./events";

const client = new Client({
  intents: [GatewayIntentBits.Guilds, GatewayIntentBits.GuildMessages],
});

client.on("messageCreate", async (message) => {
  for (const event of events) {
    if (event.input.guild !== message.guild.id) continue;
    if (event.input.channel !== message.channel.id) continue;
    const guild = await client.guilds.fetch(event.output.guild);
    const channel = await guild.channels.fetch(event.output.channel);
    if (!channel.isSendable()) continue;
    channel.send(event.output.message);
  }
});

client.login(process.env.DISCORD_TOKEN);
