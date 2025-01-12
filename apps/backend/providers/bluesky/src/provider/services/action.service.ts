import { Injectable } from "@nestjs/common";

import { ActorAction } from "~/provider/actions/actor.action";
import { ActionActorSearchActorsInput } from "~/provider/dto/inputs/actor/action-actor-search-actors.input";
import { ActionActorSearchActorsResponse } from "~/provider/dto/responses/actor/action-actor-search-actors.response";

interface IActions {
  ["actor-search-actors"]: {
    params: ActionActorSearchActorsInput;
    response: ActionActorSearchActorsResponse;
  };
}

export type IActionResponse<R> = Promise<R>;

type IActionCallbacks = {
  [K in keyof IActions]: (
    input: IActions[K]["params"],
  ) => IActionResponse<IActions[K]["response"]>;
};

@Injectable()
export class ActionService {
  private readonly actions: IActionCallbacks;

  constructor(actorAction: ActorAction) {
    this.actions = {
      "actor-search-actors": (input) => actorAction.searchActors(input),
    };
  }

  async onAction<K extends keyof IActions>(name: K, input: any): Promise<any> {
    return await this.actions[name](input);
  }
}
