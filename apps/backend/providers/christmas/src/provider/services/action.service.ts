import { Injectable } from "@nestjs/common";

import { ChristmasAction } from "~/provider/actions/christmas.action";
import { EmptyInput } from "~/provider/dto/inputs/empty.input";
import { ActionIsChristmasResponse } from "~/provider/dto/responses/action-is-christmas.response";

interface IActions {
  ["is-christmas"]: {
    params: EmptyInput;
    response: ActionIsChristmasResponse;
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

  constructor(christmasAction: ChristmasAction) {
    this.actions = {
      "is-christmas": () => christmasAction.isChristmas(),
    };
  }

  async onAction<K extends keyof IActions>(name: K, input: any): Promise<any> {
    return await this.actions[name](input);
  }
}
