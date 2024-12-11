export const events = new Set<{
  input: {
    channel: string;
    guild: string;
  };
  output: {
    channel: string;
    guild: string;
    message: string;
  };
}>();
