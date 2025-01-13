import {
  IManifestActionInfo,
  IManifestTriggerInfo,
} from "../../types/manifest-element.type";
import {
  manifestActionVar,
  manifestTriggerVar,
} from "../../vars/manifest-element.var";

const registerElement = <T extends IManifestTriggerInfo | IManifestActionInfo>(
  element: T,
  v: Set<T>,
) => {
  v.add(element);
};

export const registerTrigger = (element: IManifestTriggerInfo) => {
  return registerElement(element, manifestTriggerVar);
};

export const registerAction = (element: IManifestActionInfo) => {
  return registerElement(element, manifestActionVar);
};
