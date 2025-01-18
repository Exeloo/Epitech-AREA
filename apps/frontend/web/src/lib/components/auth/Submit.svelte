<script lang="ts">
	import type { MouseEventHandler } from 'svelte/elements';

	interface Props {
		text: string;
		onsubmit: MouseEventHandler<HTMLButtonElement>;
		on?: boolean;
	}
	const { text, onsubmit, on = true }: Props = $props();
</script>

<button
	type="submit"
	onclick={onsubmit}
	class="w-full rounded-xl {on
		? 'bg-primary'
		: 'bg-purple-300'} py-2 text-xl font-bold text-white shadow-md shadow-gray-500 dark:shadow-gray-800"
	disabled={!on}
>
	{text}
</button>
