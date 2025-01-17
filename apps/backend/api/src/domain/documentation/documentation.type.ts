export interface IClientDocumentation {
  host: string;
}

export interface IProviderTriggerDocumentation {
  name: string;
  description: string;
}

export interface IProviderActionDocumentation {
  name: string;
  description: string;
}

export interface IProviderDocumentation {
  name: string;
  actions_nb: number;
  reactions_nb: number;
  actions: IProviderTriggerDocumentation[];
  reactions: IProviderActionDocumentation[];
}

export interface IServerDocumentation {
  current_time: number;
  actions_nb: number;
  reactions_nb: number;
  areas_nb: number;
  services: IProviderDocumentation[];
}

export interface IDocumentation {
  client: IClientDocumentation;
  server: IServerDocumentation;
}
