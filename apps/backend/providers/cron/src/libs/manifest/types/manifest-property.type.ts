import { ManifestPropertyEnum } from "@lib/manifest";

import { IManifestType } from "./manifest-type.type";

interface IBaseManifestProperty {
  name?: string;
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
      properties: IManifestType;
    }
  | {
      type: ManifestPropertyEnum.ARRAY;
      items: IManifestProperty;
    }
) &
  IBaseManifestProperty;

export type IManifestPropertyInfo = (
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
      properties: object;
    }
  | {
      type: ManifestPropertyEnum.ARRAY;
      items: IManifestPropertyInfo;
    }
) &
  IBaseManifestProperty;
