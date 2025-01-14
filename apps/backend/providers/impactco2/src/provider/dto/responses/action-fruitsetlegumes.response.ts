import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionFruitsetlegumesDataResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.NUMBER,
    },
  })
  months: number[];

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  ecv: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  slug: string;
}

@ManifestType()
export class ActionFruitsetlegumesResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  warning: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: ActionFruitsetlegumesDataResponse,
    },
  })
  data: ActionFruitsetlegumesDataResponse[];
}
