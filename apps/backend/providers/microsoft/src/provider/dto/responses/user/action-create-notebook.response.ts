import {
  ManifestProperty,
  ManifestPropertyEnum,
  ManifestType,
} from "@lib/manifest";

@ManifestType()
export class OneNoteLink {
  @ManifestProperty({
    type: ManifestPropertyEnum.STRING,
  })
  href: string;
}

@ManifestType()
export class Links {
  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: OneNoteLink,
  })
  oneNoteClientUrl: OneNoteLink;

  @ManifestProperty({
    type: ManifestPropertyEnum.OBJECT,
    properties: OneNoteLink,
  })
  oneNoteWebUrl: OneNoteLink;
}

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
    properties: Links,
  })
  links: Links;
}
