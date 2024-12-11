import { manifest } from "../manifest";
import { IManifestAction, IManifestTrigger } from "../manifest.type";

const getElements = (base: Map<string, IManifestTrigger | IManifestAction>) => {
  const elements = [];
  for (const [, element] of base) {
    const input = manifest.types.get(element.input);
    const output = manifest.types.get(element.output);
    if (!input || !output) {
      throw new Error(`Unknown element type "${element.input}"`);
    }
    elements.push({
      id: element.id,
      name: element.name,
      description: element.description,
      img: element.img,
      input: input,
      output: output,
    });
  }
  return elements;
};

// const getActions = () => {};

export const getManifest = () => {
  return {
    id: "discord",
    name: "Discord",
    description: "Provider for Discord API",
    img: "https://www.svgrepo.com/show/353655/discord-icon.svg",
    triggers: getElements(manifest.triggers),
    actions: getElements(manifest.actions),
  };
};
