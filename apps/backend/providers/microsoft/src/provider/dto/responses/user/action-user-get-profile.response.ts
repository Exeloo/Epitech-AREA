import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionUserGetProfileResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  userPrincipalName: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  displayName: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  surname: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  givenName: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  preferredLanguage: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  mail: string;
}
