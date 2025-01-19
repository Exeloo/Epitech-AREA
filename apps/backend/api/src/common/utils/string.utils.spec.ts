import { capitalize } from "./string.utils";

describe("capitalize", () => {
  it("should capitalize a basic string", () => {
    const input = "test";
    const result = capitalize(input);
    expect(result).toBe("Test");
  });

  it("should lower a upper string", () => {
    const input = "TEST";
    const result = capitalize(input);
    expect(result).toBe("Test");
  });
});
