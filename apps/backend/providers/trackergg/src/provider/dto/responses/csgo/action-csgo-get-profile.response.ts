import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionCsgoGetProfileResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  sub: string;
}
