import { Injectable } from "@nestjs/common";

import { ImpactAction } from "~/provider/actions/impact.action";
import { ActionChauffageInput } from "~/provider/dto/inputs/action-chauffage.input";
import { ActionFruitsetlegumesInput } from "~/provider/dto/inputs/action-fruitsetlegumes.input";
import { ActionChauffageResponse } from "~/provider/dto/responses/action-chauffage.response";
import { ActionFruitsetlegumesResponse } from "~/provider/dto/responses/action-fruitsetlegumes.response";

interface IActions {
  ["chauffage"]: {
    params: ActionChauffageInput;
    response: ActionChauffageResponse;
  };
  ["fruitsetlegumes"]: {
    params: ActionFruitsetlegumesInput;
    response: ActionFruitsetlegumesResponse;
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

  constructor(impactAction: ImpactAction) {
    this.actions = {
      chauffage: (input) => impactAction.chauffage(input),
      fruitsetlegumes: (input) => impactAction.fruitsetlegumes(input),
    };
  }

  async onAction<K extends keyof IActions>(name: K, input: any): Promise<any> {
    return await this.actions[name](input);
  }
}
