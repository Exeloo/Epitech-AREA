import { ManifestPropertyEnum } from "./manifest.property.enum";

export interface IManifestTrigger {
  id: string;
  name: string;
  description?: string;
  img: string;
  input: string;
  output: string;
}

export interface IManifestAction {
  id: string;
  name: string;
  description?: string;
  img?: string;
  input: string;
  output: string;
}

interface IBaseManifestTypeProperty {
  description?: string;
  optional?: boolean;
}

type IManifestTypeProperty = (
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
      properties: IManifestType;
    }
  | {
      type: ManifestPropertyEnum.ARRAY;
      items: IManifestTypeProperty;
    }
) &
  IBaseManifestTypeProperty;

export interface IManifestType {
  [key: string]: IManifestTypeProperty;
}
