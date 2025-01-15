import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionSendMailResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  status: string;
}
