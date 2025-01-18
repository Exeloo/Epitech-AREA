import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class TriggerCronInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Cron",
    description: "Cron string ad cron format : http://crontab.org",
  })
  cron: string;
}
