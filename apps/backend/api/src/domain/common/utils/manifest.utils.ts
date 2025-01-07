import { BadInputException, InternalException } from "@exception";

import { ManifestPropertyEnum } from "@domain/provider/manifest/enums/manifest-property.enum";
import {
  IManifest,
  IManifestAction,
  IManifestField,
  IManifestProperty,
  IManifestTrigger,
} from "@domain/provider/manifest/types/manifest.type";

export const getManifestElement = (
  actionId: string,
  manifest: IManifest,
  forceAction: boolean = false,
): IManifestTrigger | IManifestAction | null => {
  return forceAction
    ? getManifestAction(actionId, manifest)
    : (getManifestTrigger(actionId, manifest) ??
        getManifestAction(actionId, manifest));
};

export const getManifestTrigger = (
  actionId: string,
  manifest: IManifest,
): IManifestTrigger | null => {
  for (const trigger of manifest.triggers) {
    if (trigger.id === actionId) return trigger;
  }
  return null;
};

export const getManifestAction = (
  actionId: string,
  manifest: IManifest,
): IManifestAction | null => {
  for (const action of manifest.actions) {
    if (action.id === actionId) return action;
  }
  return null;
};

const checkCallbacks = {
  [ManifestPropertyEnum.STRING]: (
    actionId: string,
    name: string,
    element: any,
  ) => {
    if (typeof element !== "string")
      throw new BadInputException("BAD_INPUT", "Bad input field type", {
        cause: new Error(
          `Bad field (${name}) type on action id (${actionId}): must be a string`,
        ),
        trace: 32,
      });
  },
  [ManifestPropertyEnum.NUMBER]: (
    actionId: string,
    name: string,
    element: any,
  ) => {
    if (typeof element !== "number")
      throw new BadInputException("BAD_INPUT", "Bad input field type", {
        cause: new Error(
          `Bad field (${name}) type on action id (${actionId}): must be a number`,
        ),
        trace: 33,
      });
  },
  [ManifestPropertyEnum.BOOLEAN]: (
    actionId: string,
    name: string,
    element: any,
  ) => {
    if (typeof element !== "boolean")
      throw new BadInputException("BAD_INPUT", "Bad input field type", {
        cause: new Error(
          `Bad field (${name}) type on action id (${actionId}): must be a boolean`,
        ),
        trace: 34,
      });
  },
  [ManifestPropertyEnum.DATE]: (
    actionId: string,
    name: string,
    element: any,
  ) => {
    if (!(element instanceof Date))
      throw new BadInputException("BAD_INPUT", "Bad input field type", {
        cause: new Error(
          `Bad field (${name}) type on action id (${actionId}): must be a date`,
        ),
        trace: 35,
      });
  },
  [ManifestPropertyEnum.OBJECT]: (
    actionId: string,
    name: string,
    element: any,
    node: IManifestProperty,
  ) => {
    if (typeof element !== "object")
      throw new BadInputException("BAD_INPUT", "Bad input field type", {
        cause: new Error(
          `Bad field (${name}) type on action id (${actionId}): must be a object`,
        ),
        trace: 36,
      });
    if (node.type !== ManifestPropertyEnum.OBJECT)
      throw new InternalException(37, {
        cause: new Error(`Invalid node type (${node.type}): must be an object`),
      });
    checkManifestType(actionId, element, node.properties, name);
  },
  [ManifestPropertyEnum.ARRAY]: (
    actionId: string,
    name: string,
    element: any,
    node: IManifestProperty,
  ) => {
    if (!(Symbol.iterator in Object(element)))
      throw new BadInputException("BAD_INPUT", "Bad input field type", {
        cause: new Error(
          `Bad field (${name}) type on action id (${actionId}): must be a array`,
        ),
        trace: 38,
      });
    if (node.type !== ManifestPropertyEnum.ARRAY)
      throw new InternalException(39, {
        cause: new Error(`Invalid node type (${node.type}): must be an array`),
      });
    for (let i = 0; i < element.length; i++) {
      checkSubType(actionId, `${name}[${i}]`, element[i], node.items);
    }
  },
};

const checkSubType = (
  actionId: string,
  name: string,
  element: any,
  node: IManifestProperty,
) => {
  checkCallbacks[node.type](actionId, name, element, node);
};

export const checkManifestType = (
  actionId: string,
  element: object,
  manifest: IManifestField,
  base: string = "",
): void => {
  for (const [key, value] of Object.entries(manifest)) {
    if (!element[key]) {
      if (value.optional) continue;
      throw new BadInputException("BAD_INPUT", "Missing input field", {
        cause: new Error(
          `Missing field (${base}.${key}) on action id (${actionId})`,
        ),
        trace: 31,
      });
    }
    checkSubType(actionId, `${base}.${key}`, element[key], value);
  }
};
