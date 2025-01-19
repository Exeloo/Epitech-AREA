import { writable } from 'svelte/store';

export const textSize = writable<'lg' | 'xl' | '2xl'>('xl');
