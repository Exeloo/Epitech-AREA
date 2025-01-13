import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class ActionCreateNotebookResponse {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  id: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  self: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  displayName: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  userRole: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.BOOLEAN,
  })
  isShared: boolean;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  sectionsUrl: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  sectionGroupsUrl: string;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
  })
  links: {
    oneNoteClientUrl: {
      href: string;
    };
    oneNoteWebUrl: {
      href: string;
    };
  };
}
