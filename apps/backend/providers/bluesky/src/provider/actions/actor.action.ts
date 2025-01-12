import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionActorSearchActorsInput } from "~/provider/dto/inputs/actor/action-actor-search-actors.input";
import { ActionActorSearchActorsResponse } from "~/provider/dto/responses/actor/action-actor-search-actors.response";
import { IActionResponse } from "~/provider/services/action.service";

@Injectable()
export class ActorAction extends BaseHttpRepository {
  // eslint-disable-next-line @typescript-eslint/no-useless-constructor
  constructor(httpService: HttpService, configService: ConfigService) {
    super(httpService, configService);
  }

  @ManifestAction({
    id: "actor-search-actors",
    name: "Search Actors",
    description: "Action to search actors",
    img: "",
    color: "#ffffff",
    input: ActionActorSearchActorsInput,
    output: ActionActorSearchActorsResponse,
  })
  searchActors(
    input: ActionActorSearchActorsInput,
  ): IActionResponse<ActionActorSearchActorsResponse> {
    return this.get(
      `/xrpc/app.bsky.actor.searchActors?q=${input.query}&limit=${input.limit}`,
    );
  }
}
