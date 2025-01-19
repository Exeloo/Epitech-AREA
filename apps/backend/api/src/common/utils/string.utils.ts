import { InternalException } from "@exception";

export const capitalize = (str: string) => {
  return str.charAt(0).toUpperCase() + str.slice(1).toLowerCase();
};

export const generateRandomString = (length: number): string => {
  if (!Number.isInteger(length) || length <= 0) {
    throw new InternalException(3, {
      cause: new Error("Length must be a positive integer."),
    });
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
