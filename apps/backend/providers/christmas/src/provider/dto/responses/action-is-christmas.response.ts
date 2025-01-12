import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionIsChristmasResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  res: boolean;
}
