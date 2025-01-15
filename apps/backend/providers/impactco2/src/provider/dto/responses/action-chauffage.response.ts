import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionChauffageDataResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  name: string;

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
export class ActionChauffageResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  warning: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: ActionChauffageDataResponse,
    },
  })
  data: ActionChauffageDataResponse[];
}
