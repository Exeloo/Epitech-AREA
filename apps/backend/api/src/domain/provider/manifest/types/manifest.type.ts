import { ManifestPropertyEnum } from "../enums/manifest-property.enum";

interface IBaseManifestProperty {
  description?: string;
  optional?: boolean;
}

export type IManifestProperty = (
  | {
      type:
        | ManifestPropertyEnum.STRING
        | ManifestPropertyEnum.INTEGER
        | ManifestPropertyEnum.BOOLEAN
        | ManifestPropertyEnum.DATE;
    }
  | {
      type: ManifestPropertyEnum.ENUM;
      enum: string[];
    }
  | {
      type: ManifestPropertyEnum.OBJECT;
      properties: IManifestField;
    }
  | {
      type: ManifestPropertyEnum.ARRAY;
      items: IManifestProperty;
    }
) &
  IBaseManifestProperty;

export interface IManifestField {
  [key: string]: IManifestProperty;
}

export interface IManifestTrigger {
  id: string;
  name: string;
  description: string;
  img: string;
  input: IManifestField;
  output: IManifestField;
}

export interface IManifestAction {
  id: string;
  name: string;
  description: string;
  img: string;
  input: IManifestField;
  output: IManifestField;
}

export interface IManifest {
  id: string;
  name: string;
  description: string;
  img: string;
  triggers: IManifestTrigger[];
  actions: IManifestAction[];
}

export type IExposedManifest = Pick<
  IManifest,
  "name" | "description" | "img" | "triggers" | "actions"
>;
