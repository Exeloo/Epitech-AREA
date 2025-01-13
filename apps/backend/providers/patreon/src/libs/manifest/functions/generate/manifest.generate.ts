import { HttpException, HttpStatus } from "@nestjs/common";

import { IBaseManifest, IManifest } from "@lib/manifest";
import { getType } from "@lib/manifest/functions/generate/get-type";

import {
  IManifestAction,
  IManifestActionInfo,
  IManifestTrigger,
  IManifestTriggerInfo,
} from "../../types/manifest-element.type";
import {
  manifestActionVar,
  manifestTriggerVar,
} from "../../vars/manifest-element.var";

const getElements = (
  base: Set<IManifestActionInfo | IManifestTriggerInfo>,
): IManifestTrigger[] | IManifestAction[] => {
  const elements = [];
  for (const element of base) {
    const input = getType(element.input);
    const output = getType(element.output);
    if (!input || !output) {
      throw new HttpException(
        `Unknown element type "${element.input}"`,
        HttpStatus.INTERNAL_SERVER_ERROR,
      );
    }
    elements.push({
      id: element.id,
      name: element.name,
      description: element.description,
      img: element.img,
      color: element.color,
      input: input,
      output: output,
    });
  }
  return elements;
};

export const generateManifest = (base: IBaseManifest): IManifest => {
  return {
    ...base,
    triggers: getElements(manifestTriggerVar) as IManifestTrigger[],
    actions: getElements(manifestActionVar) as IManifestAction[],
  };
};
