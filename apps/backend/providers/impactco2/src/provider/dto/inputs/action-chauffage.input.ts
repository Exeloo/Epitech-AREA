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
    name: "m²",
    description: "Number of m² heated",
  })
  m2: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    optional: true,
    name: "Heaters",
    description: "List of IDs for various heaters",
  })
  chauffages: string;
}
