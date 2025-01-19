<script lang="ts">
	import ProviderOption from '$lib/components/applet/new/grid/providers/ProviderOption.svelte';
	import { load_getAllProviders } from '$houdini';
	import { onMount } from 'svelte';
	import type { ElementValues } from '$lib/components/applet/new/types';

	interface Props {
		element: ElementValues | null;
	}
	let { element = $bindable() }: Props = $props();

	let providers: any[] = $state([]);
	let currentPage = $state(0);
	let currentProviders: any[] = $derived(providers.slice(currentPage * 9, currentPage * 9 + 9));

	onMount(async () => {
		const query = await load_getAllProviders({});
		const { data } = await query.getAllProviders.fetch({});

		if (!data || !data.getAllProviders) return;

		providers = data.getAllProviders;
	});

	$effect(() => {
		console.log('page: ' + currentPage);
		console.log(currentProviders);
	});
</script>

<div class="space-y-4">
	<div class="flex justify-between">
		<button aria-label="left" onclick={() => (currentPage > 0 ? currentPage-- : null)}>
			<i class="fi fi-sr-arrow-left"></i>
		</button>
		<button
			aria-label="right"
			onclick={() => (providers.length > currentPage * 9 + 9 ? currentPage++ : null)}
		>
			<i class="fi fi-sr-arrow-right"></i>
		</button>
	</div>
	<div
		class="grid grid-cols-3 grid-rows-3 overflow-hidden rounded-xl bg-neutral-100 outline outline-1 outline-gray-400 dark:bg-gray-500"
	>
		<!-- eslint-disable-next-line @typescript-eslint/no-unused-vars -->
		{#each currentProviders as provider, i}
			<ProviderOption bind:provider={currentProviders[i]} bind:element />
		{/each}
	</div>
</div>
