import {ManifestProperty, ManifestPropertyEnum, ManifestType,} from "@lib/manifest";

@ManifestType()
export class ActionUserGetProfileResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  sub: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  given_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  family_name: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  email: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  picture: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  email_verified: boolean;
}
