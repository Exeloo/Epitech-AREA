import type { Config } from 'tailwindcss';

export default {
	content: ['./src/**/*.{html,js,svelte,ts}'],

	theme: {
		extend: {
			colors: {
				primary: '#7b13d6',
				light_primary: '#8b46d3',
				very_light_primary: '#b99bda'
			}
		}
	},

	plugins: [],

	darkMode: 'selector'
} satisfies Config;
