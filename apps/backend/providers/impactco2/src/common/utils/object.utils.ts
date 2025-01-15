export const isObjectEquals = (o1: object, o2: object): boolean => {
  if (o1 && !o2) return false;
  for (const [key, value] of Object.entries(o1)) {
    if (typeof value === "object")
      if (!isObjectEquals(value, o2[key])) return false;
    if (value !== o2[key]) return false;
  }
  return true;
};
