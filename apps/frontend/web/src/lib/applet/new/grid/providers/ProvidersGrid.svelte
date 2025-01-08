<script lang="ts">
	import ProviderOption from '$lib/applet/new/grid/providers/ProviderOption.svelte';
	import { load_getAllProviders } from '$houdini';
	import { onMount } from 'svelte';
	import type { ElementValues } from '$lib/applet/new/types';

	interface Props {
		element: ElementValues | null;
	}
	let { element = $bindable() }: Props = $props();

	let providers: any[] = $state([]);

	onMount(async () => {
		const query = await load_getAllProviders({});
		const { data } = await query.getAllProviders.fetch({});

		if (!data || !data.getAllProviders) return;

		providers = data.getAllProviders;
	});
</script>

<div class="grid grid-cols-3 grid-rows-3 overflow-hidden rounded-xl bg-neutral-100">
	{#each providers as provider}
		<ProviderOption {provider} bind:element />
	{/each}
</div>
