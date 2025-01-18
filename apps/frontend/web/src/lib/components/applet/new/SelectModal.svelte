<script lang="ts">
	import {
		type BaseProvider$data,
		BaseProviderStore,
		type ProviderManifestAction$data
	} from '$houdini';
	import ProvidersGrid from '$lib/components/applet/new/grid/providers/ProvidersGrid.svelte';
	import ElementsGrid from '$lib/components/applet/new/grid/elements/ElementsGrid.svelte';
	import { BlockType, type ElementValues } from '$lib/components/applet/new/types';

	interface Props {
		type: BlockType;
		open?: boolean;
		element: ElementValues | null;
	}
	let { type, open = $bindable(false), element = $bindable() }: Props = $props();

	const baseProviderStore = new BaseProviderStore();

	let currentProviderInfo: BaseProvider$data | null = $state(null);

	$effect(() => {
		if (element) {
			baseProviderStore.get(element.provider).subscribe((provider) => {
				currentProviderInfo = provider;
			});
		} else {
			currentProviderInfo = null;
		}
	});

	const verifyInput = (inputs: Record<string, string>, action: ProviderManifestAction$data) => {
		const input = JSON.parse(action.input);
		for (const [key, value] of Object.entries(inputs)) {
			if (!input[key]) return false;
			if (!input[key].optional && !value) return false;
		}
		return true;
	};

	const isFilledInput = (inputs: Record<string, string> | undefined): boolean => {
		if (!inputs || !element?.actionId || !element.providerId || !element.provider) return false;
		const actions = (type === BlockType.Triggers
			? element.provider.manifest.triggers
			: element.provider.manifest.actions) as unknown as ProviderManifestAction$data[];
		for (const action of actions) {
			if (action.id === element.actionId) {
				return verifyInput(inputs, action);
			}
		}
		return false;
	};
</script>

<div
	id="default-modal"
	aria-hidden="true"
	class="{open
		? ''
		: 'hidden'} fixed inset-0 z-50 flex max-h-full w-full items-center justify-center overflow-y-auto overflow-x-hidden"
>
	<div class="absolute inset-0 bg-black opacity-50"></div>
	<div
		class="relative flex h-2/3 w-full flex-col rounded-lg bg-white shadow sm:w-1/2 md:w-2/3 lg:w-1/2 dark:bg-gray-800"
	>
		<div class="flex items-center justify-between rounded-t p-4">
			<h3 class="text-base font-semibold">{type === BlockType.Actions ? 'Action' : 'Trigger'}</h3>
			<div class="flex justify-end">
				{#if element}
					<button
						onclick={() => (element = null)}
						type="button"
						class="ms-auto inline-flex h-8 w-8 items-center justify-center rounded-full bg-transparent text-sm text-gray-400 hover:bg-gray-200 hover:text-gray-900 dark:hover:bg-gray-600"
						data-modal-hide="default-modal"
					>
						<i class="fi fi-br-undo flex justify-center"></i>
						<span class="sr-only">back</span>
					</button>
				{/if}
				<button
					onclick={() => (open = false)}
					type="button"
					class="ms-auto inline-flex h-8 w-8 items-center justify-center rounded-full bg-transparent text-sm text-gray-400 hover:bg-gray-200 hover:text-gray-900 dark:hover:bg-gray-600"
					data-modal-hide="default-modal"
				>
					<i class="fi fi-br-cross flex justify-center"></i>
					<span class="sr-only">Close modal</span>
				</button>
			</div>
		</div>
		<div
			class="relative flex h-1/5 w-full items-center justify-center text-lg font-bold"
			style="background-color: {currentProviderInfo
				? currentProviderInfo.color
				: 'var(--default-background-light)'}"
		>
			{#if currentProviderInfo}
				<img
					class="flex h-16 w-16 items-center justify-center"
					alt={currentProviderInfo.name}
					src={currentProviderInfo.img}
				/>
			{:else}
				Choose a provider
			{/if}
		</div>
		<div class="flex h-full flex-col overflow-y-auto p-8">
			{#if element}
				<ElementsGrid {type} bind:element />
			{:else}
				<ProvidersGrid bind:element />
			{/if}
		</div>

		<button
			onclick={() => (open = isFilledInput(element?.inputs) ? false : open)}
			disabled={!isFilledInput(element?.inputs)}
			class="m-5 w-fit self-end rounded-full bg-primary px-8 py-2 text-lg font-bold text-white shadow hover:bg-light_primary disabled:bg-very_light_primary"
		>
			Apply
		</button>
	</div>
</div>
