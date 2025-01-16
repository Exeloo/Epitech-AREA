import { writable } from 'svelte/store';
import { browser } from '$app/environment';

export const selectedTheme = writable<string | null>(null);

if (browser) {
	selectedTheme.subscribe((theme) => {
		const html = document.documentElement;

		console.log(theme);

		if (theme === 'Dark' && !html.classList.contains('dark')) {
			html.classList.add('dark');
		} else {
			html.classList.remove('dark');
		}
	});
}
