import {
  IManifestAction,
  IManifestTrigger,
  IManifestType,
} from "./manifest.type";

export const manifest = {
  triggers: new Map<string, IManifestTrigger>(),
  actions: new Map<string, IManifestAction>(),
  types: new Map<string, IManifestType>(),
};
