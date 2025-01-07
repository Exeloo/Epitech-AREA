<script lang="ts">
	import SelectModal from '$lib/applet/new/SelectModal.svelte';
	import type { BlockType, ElementValues } from '$lib/applet/new/types';

	interface Props {
		title: string;
		type: BlockType;
		focus?: boolean;
		element: ElementValues | null;
	}
	let { title, type, focus = false, element = $bindable() }: Props = $props();

	let open = $state(false);
</script>

<div
	class="flex w-full items-center justify-between gap-10 rounded-2xl text-4xl font-bold text-white {focus
		? 'bg-neutral-800'
		: 'bg-neutral-400'} px-8 py-4"
>
	{title}
	<button
		onclick={() => (open = true)}
		class="flex items-center rounded-full bg-white px-4 py-2 text-lg text-black"
	>
		add
	</button>
</div>
<SelectModal bind:open {type} bind:element />
