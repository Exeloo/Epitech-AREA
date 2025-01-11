import {ManifestProperty, ManifestPropertyEnum, ManifestType,} from "@lib/manifest";

@ManifestType()
export class ActionCsgoGetProfileInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "User Id",
    description: "User Steam Identifier (like Steam ID, Steam Community URL, Steam Vanity Username, etc.)",
  })
  user_id: string;
}
