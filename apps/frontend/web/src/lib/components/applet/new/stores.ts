import { writable } from 'svelte/store';
import type { ElementValues } from '$lib/components/applet/new/types';

export const actionsStore = writable<ElementValues[]>([]);
