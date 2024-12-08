export const camelToSnake = (str: string) => {
  return str.replace(/(?:[A-Z]|\d+)[a-z]*/g, "_$&").toLowerCase();
};
