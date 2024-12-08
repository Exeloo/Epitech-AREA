import { camelToSnake } from "./case.utils";

describe("camelToSnake", () => {
  it("should convert a camelCase string to snake_case", () => {
    expect(camelToSnake("camelCaseString")).toBe("camel_case_string");
  });

  it("should handle strings with single camel case transition", () => {
    expect(camelToSnake("helloWorld")).toBe("hello_world");
  });

  it("should return an empty string when input is an empty string", () => {
    expect(camelToSnake("")).toBe("");
  });

  it("should handle strings with multiple camel case transitions", () => {
    expect(camelToSnake("thisIsACamelCasedString")).toBe(
      "this_is_a_camel_cased_string",
    );
  });

  it("should handle strings without camel casing", () => {
    expect(camelToSnake("snake_case")).toBe("snake_case");
  });
});
