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

<div
	class="flex w-full items-center justify-between gap-10 rounded-2xl text-4xl font-bold text-white {focus
		? 'bg-neutral-800'
		: 'bg-neutral-400'} px-8 py-4"
>
	{title}
	{#if $provider}
		<button
			onclick={() => (open = true)}
			style="background-color: {$provider.color}"
			class="rounded-3xl p-3 text-base text-black"
		>
			<img src={$provider.img} alt={$provider.name} />
		</button>
	{:else}
		<button
			onclick={() => (open = true)}
			class="flex items-center rounded-full bg-white px-4 py-2 text-lg text-black"
		>
			add
		</button>
	{/if}
</div>
<SelectModal bind:open {type} bind:element />
