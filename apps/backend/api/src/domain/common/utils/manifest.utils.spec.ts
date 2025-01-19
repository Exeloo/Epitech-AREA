import { ManifestOAuthEnum } from "@domain/provider/manifest/enums/manifest-oauth.enum";
import { ManifestPropertyEnum } from "@domain/provider/manifest/enums/manifest-property.enum";
import {
  IManifest,
  IManifestField,
} from "@domain/provider/manifest/types/manifest.type";

import { checkManifestType, getManifestElement } from "./manifest.utils";

const baseManifest = {
  id: "",
  name: "",
  description: "",
  img: "",
  color: "",
  oauth: { type: ManifestOAuthEnum.NONE },
  triggers: [],
  actions: [],
};

const baseManifestAction = {
  id: "",
  name: "",
  description: "",
  img: "",
  color: "",
  input: {},
  output: {},
};

describe("manifest utils", () => {
  describe("checkManifestType", () => {
    it("should check manifest type", () => {
      const input: object = {
        test1: "Où est la pierre ?",
        test2: 42,
        test3: {
          test4: "Dans la poche !",
        },
      };
      const manifest: IManifestField = {
        test1: {
          type: ManifestPropertyEnum.STRING,
        },
        test2: {
          type: ManifestPropertyEnum.NUMBER,
        },
        test3: {
          type: ManifestPropertyEnum.OBJECT,
          properties: {
            test4: {
              type: ManifestPropertyEnum.STRING,
            },
          },
        },
      };

      try {
        checkManifestType("", input, manifest);
        expect(true).toBe(true);
      } catch {
        expect(false).toBe(true);
      }
    });

    it("should not check manifest type (missing first level field name)", () => {
      const input: object = {
        test1: "Où est la pierre ?",
        test2: 42,
      };
      const manifest: IManifestField = {
        test1: {
          type: ManifestPropertyEnum.STRING,
        },
        test2: {
          type: ManifestPropertyEnum.NUMBER,
        },
        test3: {
          type: ManifestPropertyEnum.OBJECT,
          properties: {
            test4: {
              type: ManifestPropertyEnum.STRING,
            },
          },
        },
      };

      try {
        checkManifestType("", input, manifest);
        expect(false).toBe(true);
      } catch {
        expect(true).toBe(true);
      }
    });

    it("should not check manifest type (missing second level field name)", () => {
      const input: object = {
        test1: "Où est la pierre ?",
        test2: 42,
        test3: {},
      };
      const manifest: IManifestField = {
        test1: {
          type: ManifestPropertyEnum.STRING,
        },
        test2: {
          type: ManifestPropertyEnum.NUMBER,
        },
        test3: {
          type: ManifestPropertyEnum.OBJECT,
          properties: {
            test4: {
              type: ManifestPropertyEnum.STRING,
            },
          },
        },
      };

      try {
        checkManifestType("", input, manifest);
        expect(false).toBe(true);
      } catch {
        expect(true).toBe(true);
      }
    });

    it("should not check manifest type (bad second level field type)", () => {
      const input: object = {
        test1: "Où est la pierre ?",
        test2: 42,
        test3: {
          test4: 84,
        },
      };
      const manifest: IManifestField = {
        test1: {
          type: ManifestPropertyEnum.STRING,
        },
        test2: {
          type: ManifestPropertyEnum.NUMBER,
        },
        test3: {
          type: ManifestPropertyEnum.OBJECT,
          properties: {
            test4: {
              type: ManifestPropertyEnum.STRING,
            },
          },
        },
      };

      try {
        checkManifestType("", input, manifest);
        expect(false).toBe(true);
      } catch {
        expect(true).toBe(true);
      }
    });
  });

  describe("getManifestElement", () => {
    it("should find manifest trigger", () => {
      const manifest: IManifest = {
        ...baseManifest,
        triggers: [
          {
            ...baseManifestAction,
            id: "test-fail",
          },
          {
            ...baseManifestAction,
            id: "test-correct",
          },
        ],
      };

      expect(getManifestElement("test-correct", manifest)).toMatchObject({
        ...baseManifestAction,
        id: "test-correct",
      });
    });

    it("should find manifest action", () => {
      const manifest: IManifest = {
        ...baseManifest,
        actions: [
          {
            ...baseManifestAction,
            id: "test-fail",
          },
          {
            ...baseManifestAction,
            id: "test-correct",
          },
        ],
      };

      expect(getManifestElement("test-correct", manifest)).toMatchObject({
        ...baseManifestAction,
        id: "test-correct",
      });
    });

    it("should find manifest trigger with action", () => {
      const manifest: IManifest = {
        ...baseManifest,
        triggers: [
          {
            ...baseManifestAction,
            id: "test",
            name: "test-correct",
          },
        ],
        actions: [
          {
            ...baseManifestAction,
            id: "test",
            name: "test-fail",
          },
        ],
      };

      expect(getManifestElement("test", manifest)).toMatchObject({
        ...baseManifestAction,
        id: "test",
        name: "test-correct",
      });
    });

    it("should find manifest action with trigger", () => {
      const manifest: IManifest = {
        ...baseManifest,
        triggers: [
          {
            ...baseManifestAction,
            id: "test",
            name: "test-fail",
          },
        ],
        actions: [
          {
            ...baseManifestAction,
            id: "test",
            name: "test-correct",
          },
        ],
      };

      expect(getManifestElement("test", manifest, true)).toMatchObject({
        ...baseManifestAction,
        id: "test",
        name: "test-correct",
      });
    });

    it("should not find manifest action in trigger", () => {
      const manifest: IManifest = {
        ...baseManifest,
        triggers: [
          {
            ...baseManifestAction,
            id: "test",
            name: "test-fail",
          },
        ],
      };

      expect(getManifestElement("test", manifest, true)).toBeNull();
    });

    it("should not find manifest element in empty", () => {
      const manifest: IManifest = {
        ...baseManifest,
      };

      expect(getManifestElement("test", manifest)).toBeNull();
    });
  });
});
