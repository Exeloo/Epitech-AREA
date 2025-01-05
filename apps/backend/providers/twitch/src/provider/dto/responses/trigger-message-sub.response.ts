import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerMessageSubResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  text: string;
}
