import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class CreateForwardingAddressInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  userId: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  forwardingEmail: string;
}
