import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionUserGetProfileAttributesResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  email: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  first_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  last_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  full_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  image_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  thumb_url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  url: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  vanity: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  created: string;
}

@ManifestType()
export class ActionUserGetProfileResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: ActionUserGetProfileAttributesResponse,
  })
  attributes: ActionUserGetProfileAttributesResponse;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  type: string;
}
