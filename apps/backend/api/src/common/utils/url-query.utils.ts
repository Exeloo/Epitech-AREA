import { camelToSnake } from "./case.utils";

export const urlQueryBuilder = (
  obj: object,
  path?: string,
  format: boolean = false,
) => {
  const query = Object.entries(obj)
    .filter(([k, v]) => k && v)
    .map(([key, value]) => `${format ? camelToSnake(key) : key}=${value}`)
    .join("&");
  return `${path ?? ""}${query ? `?${query}` : ""}`;
};
