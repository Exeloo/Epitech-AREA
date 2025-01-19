import { HttpService } from "@nestjs/axios";
import { Injectable } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";

import { ManifestAction } from "@lib/manifest";

import { BaseHttpRepository } from "~/provider/common/base-http.repository";
import { ActionChauffageInput } from "~/provider/dto/inputs/action-chauffage.input";
import { ActionFruitsetlegumesInput } from "~/provider/dto/inputs/action-fruitsetlegumes.input";
import { ActionChauffageResponse } from "~/provider/dto/responses/action-chauffage.response";
import { ActionFruitsetlegumesResponse } from "~/provider/dto/responses/action-fruitsetlegumes.response";
import { IActionResponse } from "~/provider/services/action.service";

const urlQueryBuilder = (obj: object, path?: string) => {
  const query = Object.entries(obj)
    .filter(([k, v]) => k && v)
    .map(([key, value]) => `${key}=${value}`)
    .join("&");
  return `${path ?? ""}${query ? `?${query}` : ""}`;
};

@Injectable()
export class ImpactAction extends BaseHttpRepository {
  // eslint-disable-next-line @typescript-eslint/no-useless-constructor
  constructor(httpService: HttpService, configService: ConfigService) {
    super(httpService, configService);
  }

  @ManifestAction({
    id: "chauffage",
    name: "Chauffage",
    description: "Call to know chauffage",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/temperature-elevee.svg?alt=media&token=8d280253-708d-4d05-8643-f5975461eff6",
    color: "#279791",
    input: ActionChauffageInput,
    output: ActionChauffageResponse,
  })
  async chauffage(
    input: ActionChauffageInput,
  ): IActionResponse<ActionChauffageResponse> {
    return await this.get(
      urlQueryBuilder(
        {
          ...input,
          language: "en",
        },
        "/chauffage",
      ),
    );
  }

  @ManifestAction({
    id: "fruitsetlegumes",
    name: "Fruits et Legumes",
    description: "Call to know Fruits et Legumes",
    img: "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/panier-depicerie.svg?alt=media&token=ad04f107-a575-4cf2-accc-023d6ed43c4e",
    color: "#05e1d5",
    input: ActionFruitsetlegumesInput,
    output: ActionFruitsetlegumesResponse,
  })
  async fruitsetlegumes(
    input: ActionFruitsetlegumesInput,
  ): IActionResponse<ActionFruitsetlegumesResponse> {
    return await this.get(
      urlQueryBuilder(
        {
          ...input,
          language: "en",
        },
        "/fruitsetlegumes",
      ),
    );
  }
}
