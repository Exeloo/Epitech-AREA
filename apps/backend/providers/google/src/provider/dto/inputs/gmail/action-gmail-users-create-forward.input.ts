import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class CreateForwardingAddressInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "User ID",
    description: "The ID of the user who forwarded the mail",
  })
  userId: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Forwarding Email",
    description: "The email to be forwarded",
  })
  forwardingEmail: string;
}
