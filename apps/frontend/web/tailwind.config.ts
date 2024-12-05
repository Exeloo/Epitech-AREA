import type { Config } from 'tailwindcss';

export default {
  content: ['./src/**/*.{html,js,svelte,ts}'],

  theme: {
    extend: {
      colors: {
        primary: "#7b13d6",
      }
    }
  },

  plugins: []
} satisfies Config;
