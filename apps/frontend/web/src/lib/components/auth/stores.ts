import { writable } from 'svelte/store';

export const errorsStore = writable<string[]>([]);
export const successStore = writable<string[]>([]);
