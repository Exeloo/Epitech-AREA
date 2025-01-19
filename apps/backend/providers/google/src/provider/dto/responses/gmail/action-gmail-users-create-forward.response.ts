import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class CreateForwardingAddressResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  forwardingEmail: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  verificationStatus: string;
}
