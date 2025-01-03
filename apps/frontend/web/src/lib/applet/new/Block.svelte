<script lang="ts">
	import SelectModal from '$lib/applet/new/SelectModal.svelte';

	interface Props {
		title: string;
		focus?: boolean;
	}
	let { title, focus = false }: Props = $props();

	let selectOption = $state(false);
</script>

<div
	class="flex items-center justify-between gap-10 rounded-2xl text-4xl font-bold text-white {focus
		? 'bg-neutral-800'
		: 'bg-neutral-400'} px-8 py-4"
>
	{title}
	<button
		onclick={() => (selectOption = true)}
		class="flex items-center rounded-full bg-white px-4 py-2 text-lg text-black"
	>
		add
	</button>
</div>
<SelectModal bind:open={selectOption} />
