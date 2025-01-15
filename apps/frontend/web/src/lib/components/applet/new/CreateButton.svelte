<script lang="ts">
	import type { MouseEventHandler } from 'svelte/elements';

	interface Props {
		name: string;
		onclick: MouseEventHandler<HTMLButtonElement>;
		actif?: boolean;
	}
	let { name, onclick, actif = true }: Props = $props();
</script>

<button
	{onclick}
	disabled={!actif}
	class="flex w-fit justify-center gap-2 rounded-full {actif
		? 'bg-purple-700'
		: 'bg-purple-400'} px-4 py-2 text-xl font-bold text-white"
>
	{name}
	<i class="fi fi-rr-angle-right flex items-center justify-center"></i>
</button>
