import { TYPES } from "@lib/manifest/functions/generate/get-type";

export const ManifestTypeSymbol = Symbol("manifest-type");

export const ManifestType = () => {
  return (target: any) => {
    if (!TYPES.has(target.name)) TYPES.set(target.name, {});
  };
};
