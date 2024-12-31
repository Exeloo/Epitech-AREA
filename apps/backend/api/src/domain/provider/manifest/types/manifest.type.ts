import { ManifestPropertyEnum } from "../enums/manifest-property.enum";

interface IBaseManifestProperty {
  description?: string;
  optional?: boolean;
}

export type IManifestProperty = (
  | {
      type:
        | ManifestPropertyEnum.STRING
        | ManifestPropertyEnum.NUMBER
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
  color: string;
  input: IManifestField;
  output: IManifestField;
}

export type IExposedManifestTrigger = Pick<
  IManifestTrigger,
  "id" | "name" | "description" | "img" | "color"
> & {
  input: string;
  output: string;
};

export interface IManifestAction {
  id: string;
  name: string;
  description: string;
  img: string;
  color: string;
  input: IManifestField;
  output: IManifestField;
}

export type IExposedManifestAction = Pick<
  IManifestAction,
  "id" | "name" | "description" | "img" | "color"
> & {
  input: string;
  output: string;
};

export interface IManifest {
  id: string;
  name: string;
  description: string;
  img: string;
  color: string;
  triggers: IManifestTrigger[];
  actions: IManifestAction[];
}

export type IExposedManifest = {
  triggers: IExposedManifestTrigger[];
  actions: IExposedManifestAction[];
};
