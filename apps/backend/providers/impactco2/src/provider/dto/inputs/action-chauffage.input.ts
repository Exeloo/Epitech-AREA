import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionChauffageInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  m2: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
  })
  chauffages: string;
}
