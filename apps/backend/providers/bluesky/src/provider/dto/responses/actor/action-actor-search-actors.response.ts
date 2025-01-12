import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionActorSearchActorResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  did: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  handle: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  displayName: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  avatar: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  createdAt: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  indexedAt: string;
}

@ManifestType()
export class ActionActorSearchActorsResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.ARRAY,
    items: {
      type: ManifestPropertyEnum.OBJECT,
      properties: ActionActorSearchActorResponse,
    },
  })
  actors: ActionActorSearchActorResponse[];
}
