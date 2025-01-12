import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionAccountGetProfileInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Username",
    description: "Username (example the 'Exelo' in 'Exelo#1640'",
  })
  username: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
    name: "Tag",
    description: "User tag (example the '1640' in 'Exelo#1640'",
  })
  tag: string;
}
