import { ManifestProperty, ManifestPropertyEnum } from "@lib/manifest";
import { ManifestType } from "@lib/manifest/decorators/type.decorator";

@ManifestType()
export class ActionDropReasonResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  code: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  message: string;
}
