export const capitalize = (str: string) => {
  return str.slice(0, 1).toUpperCase() + str.slice(1).toLowerCase();
};

export const formatCodeToText = (str: string) => {
  return str
    .split("_")
    .filter((value) => !!value)
    .map((value) => capitalize(value))
    .join(" ");
};

export const generateRandomString = (length: number): string => {
  if (!Number.isInteger(length) || length <= 0) {
    throw Error(); // @todo Error
  }

  let randomString = "";
  const characters =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!:;,?./§*$µ£¤&é'(-è_çà)=~#{[|`\\^@]}";
  for (let i = 0; i < length; i++) {
    randomString += characters.charAt(
      Math.floor(Math.random() * characters.length),
    );
  }
  return randomString;
};
