<script lang="ts">
	import { load_getAllProviders, type ProviderWithManifest$data } from '$houdini';
	import { onMount } from 'svelte';
	import ProviderOption from '$lib/applet/new/ProviderOption.svelte';

	interface Props {
		title?: string;
		open?: boolean;
	}
	let { title = 'Actions', open = $bindable(false) }: Props = $props();

	let providers: any[] = $state([]);
	let selectedProvider: ProviderWithManifest$data | null = $state(null);

	onMount(async () => {
		const query = await load_getAllProviders({});
		const { data } = await query.getAllProviders.fetch({});

		if (!data || !data.getAllProviders) return;

		providers = data.getAllProviders;
	});
</script>

<div
	id="default-modal"
	aria-hidden="true"
	class="{open
		? ''
		: 'hidden'} fixed inset-0 z-50 flex max-h-full w-full items-center justify-center overflow-y-auto overflow-x-hidden"
>
	<div class="absolute inset-0 bg-black opacity-50"></div>
	<div class="relative flex max-h-full flex-col gap-7 rounded-lg bg-white p-4 shadow">
		<div class="flex items-center justify-end rounded-t">
			<h3 class="text-base font-semibold">{title}</h3>
			<button
				onclick={() => (open = false)}
				type="button"
				class="ms-auto inline-flex h-8 w-8 items-center justify-center rounded-full bg-transparent text-sm text-gray-400 hover:bg-gray-200 hover:text-gray-900"
				data-modal-hide="default-modal"
			>
				<i class="fi fi-br-cross flex justify-center"></i>
				<span class="sr-only">Close modal</span>
			</button>
		</div>
		<div class="flex justify-center">
			{#if selectedProvider}
				{selectedProvider}
			{:else}
				<h3 class="text-lg font-bold">Choose a provider</h3>
			{/if}
		</div>
		{#if selectedProvider}
			{selectedProvider}
		{:else}
			<div class="grid grid-cols-3 grid-rows-3 overflow-hidden rounded-xl bg-neutral-100">
				{#each providers as provider}
					<ProviderOption {provider} bind:selectedProvider />
				{/each}
			</div>
		{/if}
	</div>
</div>
