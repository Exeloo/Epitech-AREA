import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerCronInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
    name: "Time",
    description: "The time between each trigger",
  })
  time: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Unit",
    description: "Time unit (s, m, h, d, w, M, y)",
  })
  unit: string;
}
