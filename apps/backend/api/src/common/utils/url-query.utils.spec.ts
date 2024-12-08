import { urlQueryBuilder } from "./url-query.utils";

describe("urlQueryBuilder", () => {
  it("should build a query string from an object without formatting keys", () => {
    const input = { foo: "bar", baz: "qux" };
    const result = urlQueryBuilder(input);
    expect(result).toBe("?foo=bar&baz=qux");
  });

  it("should build a query string from an object with snake_case formatting", () => {
    const input = { fooBar: "baz", quxQuux: "corge" };
    const result = urlQueryBuilder(input, undefined, true);
    expect(result).toBe("?foo_bar=baz&qux_quux=corge");
  });

  it("should attach the path before the query string", () => {
    const input = { alpha: "beta" };
    const path = "/api/data";
    const result = urlQueryBuilder(input, path);
    expect(result).toBe("/api/data?alpha=beta");
  });

  it("should not include keys with falsy values", () => {
    const input = { key1: "value1", key2: undefined, key3: null, key4: "" };
    const result = urlQueryBuilder(input);
    expect(result).toBe("?key1=value1");
  });

  it('should handle an empty object by returning just the path or ""', () => {
    const input = {};
    const resultWithoutPath = urlQueryBuilder(input);
    expect(resultWithoutPath).toBe("");

    const path = "/empty";
    const resultWithPath = urlQueryBuilder(input, path);
    expect(resultWithPath).toBe("/empty");
  });
});
