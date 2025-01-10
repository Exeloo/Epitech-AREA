import "reflect-metadata";

import { TYPES } from "@lib/manifest/functions/generate/get-type";

import { IManifestPropertyInfo } from "../types/manifest-property.type";

export const ManifestPropertySymbol = Symbol("manifest-property");

export const ManifestProperty = (manifest: IManifestPropertyInfo) => {
  return (target: any, propertyKey: string) => {
    TYPES.set(target.constructor.name, {
      ...TYPES.get(target.constructor.name),
      [propertyKey]: manifest,
    });
  };
};
