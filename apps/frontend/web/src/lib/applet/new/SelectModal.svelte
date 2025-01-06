<script lang="ts">
	import {
		type BaseProvider$data,
		BaseProviderStore,
		type ProviderWithManifest$data
	} from '$houdini';
	import ProvidersGrid from '$lib/applet/new/grid/providers/ProvidersGrid.svelte';
	import ActionsGrid from '$lib/applet/new/grid/actions/ActionsGrid.svelte';

	interface Props {
		type?: 'Triggers' | 'Actions';
		open?: boolean;
	}
	let { type = 'Actions', open = $bindable(false) }: Props = $props();

	const baseProviderStore = new BaseProviderStore();

	let selectedProvider: ProviderWithManifest$data | null = $state(null);
	let currentProviderInfo: BaseProvider$data | null = $state(null);

	$effect(() => {
		if (selectedProvider) {
			baseProviderStore.get(selectedProvider).subscribe((provider) => {
				currentProviderInfo = provider;
			});
		} else {
			currentProviderInfo = null;
		}
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
	<div class="relative flex h-1/2 w-96 flex-col rounded-lg bg-white shadow">
		<div class="flex items-center justify-end rounded-t p-4">
			<h3 class="text-base font-semibold">{type}</h3>
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
		<div
			class="relative flex h-20 w-full items-center justify-center text-lg font-bold"
			style="background-color: {currentProviderInfo ? currentProviderInfo.color : '#e6e6e6'}"
		>
			{#if currentProviderInfo}
				<img class="h-16 w-16" alt={currentProviderInfo.name} src={currentProviderInfo.img} />
			{:else}
				Choose a provider
			{/if}
		</div>
		<div class="p-8">
			{#if selectedProvider}
				<ActionsGrid />
			{:else}
				<ProvidersGrid bind:selectedProvider />
			{/if}
		</div>
	</div>
</div>
