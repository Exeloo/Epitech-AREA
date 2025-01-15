import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionListUsersInput {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  user_id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  since?: number;

  @ManifestProperty({
    type: ManifestPropertyEnum.NUMBER,
  })
  per_page?: number;
}
