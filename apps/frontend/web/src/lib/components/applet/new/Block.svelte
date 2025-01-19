<script lang="ts">
	import SelectModal from '$lib/components/applet/new/SelectModal.svelte';
	import type { BlockType, ElementValues } from '$lib/components/applet/new/types';
	import { BaseProviderStore } from '$houdini';

	interface Props {
		title: string;
		type: BlockType;
		open?: boolean;
		element: ElementValues | null;
		canDelete?: boolean;
	}
	let { title, type, open = $bindable(false), element = $bindable() }: Props = $props();

	let baseProviderStore = new BaseProviderStore();

	let provider = $derived(element ? baseProviderStore.get(element.provider) : null);
</script>

<button
	onclick={() => (open = true)}
	class="flex w-[80%] flex-col items-center justify-between gap-6 rounded-2xl text-4xl font-bold text-white xl:flex-row {type
		? 'bg-neutral-800'
		: 'bg-neutral-400'} px-8 py-4"
>
	{title}
	{#if $provider}
		<div
			style="background-color: {$provider.color}"
			class="h-full rounded-full px-16 py-4 text-base text-black"
		>
			<img src={$provider.img} alt={$provider.name} class="h-full w-8" />
		</div>
	{:else}
		<div class="flex items-center rounded-full bg-white px-16 py-4 text-xl text-black">Add</div>
	{/if}
</button>
<SelectModal bind:open {type} bind:element />
