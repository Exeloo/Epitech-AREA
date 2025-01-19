import { writable } from 'svelte/store';

export const openedAction = writable<string | undefined>(undefined);
