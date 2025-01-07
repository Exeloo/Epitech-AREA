import { ObjectLiteral } from "@type/object.type";
import "reflect-metadata";

import { ManifestPropertyEnum } from "@lib/manifest";

import { IManifestPropertyInfo } from "../../types/manifest-property.type";

export const TYPES = new Map<
  string,
  { [key: string]: IManifestPropertyInfo }
>();

const parsePropertyInfo = (info: IManifestPropertyInfo) => {
  if (info.type === ManifestPropertyEnum.ARRAY)
    return {
      ...info,
      items: parsePropertyInfo(info.items),
    };
  if (info.type === ManifestPropertyEnum.OBJECT)
    return {
      ...info,
      properties: getType(info.properties),
    };
  return info;
};

export const getType = (element: ObjectLiteral) => {
  return Object.fromEntries(
    Object.entries(TYPES.get(element.name)).map(([key, value]) => {
      return [key, parsePropertyInfo(value)];
    }),
  );
};
