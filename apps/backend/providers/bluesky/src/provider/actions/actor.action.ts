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
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/icon-search.png?alt=media&token=939d048c-8c7c-4be0-852a-8052863e4adb",
    color: "#1185fe",
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
