<script lang="ts">
	import type { MouseEventHandler } from 'svelte/elements';

	interface Props {
		text: string;
		onsubmit: MouseEventHandler<HTMLButtonElement>;
	}
	const { text, onsubmit }: Props = $props();
</script>

<button
	type="submit"
	onclick={onsubmit}
	class="w-full rounded-xl bg-primary py-2 text-xl font-bold text-white shadow-md shadow-gray-500"
>
	{text}
</button>
