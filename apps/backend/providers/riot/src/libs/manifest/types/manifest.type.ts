import { ManifestOAuthEnum } from "@lib/manifest";

import { IManifestAction, IManifestTrigger } from "./manifest-element.type";

export interface IManifest {
  id: string;
  name: string;
  description: string;
  img: string;
  color: string;
  oauth: {
    type: ManifestOAuthEnum;
  };
  triggers: IManifestTrigger[];
  actions: IManifestAction[];
}

export type IBaseManifest = Pick<
  IManifest,
  "id" | "name" | "description" | "img" | "color" | "oauth"
>;
