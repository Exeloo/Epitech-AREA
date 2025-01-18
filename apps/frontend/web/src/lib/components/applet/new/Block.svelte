<script lang="ts">
	import SelectModal from '$lib/components/applet/new/SelectModal.svelte';
	import type { BlockType, ElementValues } from '$lib/components/applet/new/types';
	import { BaseProviderStore } from '$houdini';

	interface Props {
		title: string;
		type: BlockType;
		focus?: boolean;
		element: ElementValues | null;
	}
	let { title, type, focus = false, element = $bindable() }: Props = $props();

	let baseProviderStore = new BaseProviderStore();

	let open = $state(false);

	let provider = $derived(element ? baseProviderStore.get(element.provider) : null);
</script>

<button
	onclick={() => (open = true)}
	class="flex w-full flex-col items-center justify-between gap-6 rounded-2xl text-4xl font-bold text-white xl:flex-row {focus
		? 'bg-neutral-800'
		: 'bg-neutral-400'} px-8 py-4"
>
	{title}
	{#if $provider}
		<div
			style="background-color: {$provider.color}"
			class="h-full rounded-full px-4 py-2 text-base text-black"
		>
			<img src={$provider.img} alt={$provider.name} class="h-full w-8" />
		</div>
	{:else}
		<div
			class="flex items-center rounded-full bg-white px-4 py-2 text-lg text-black"
		>
			add
		</div>
	{/if}
</button>
<SelectModal bind:open {type} bind:element />
