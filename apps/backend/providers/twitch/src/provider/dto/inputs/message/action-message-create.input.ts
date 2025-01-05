import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionMessageCreateInput {
  // * Body
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  broadcaster_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  sender_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  message: string;
}
