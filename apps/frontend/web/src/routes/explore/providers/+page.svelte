<script lang="ts">
	import ProviderCard from '$lib/components/explore/card/ProviderCard.svelte';
	import { onMount } from 'svelte';
	import { load_getAllProviders } from '$houdini';

	let providers: any[] = [];

	onMount(async () => {
		const query = await load_getAllProviders({});
		const { data } = await query.getAllProviders.fetch({});

		if (!data || !data.getAllProviders) return;

		providers = data.getAllProviders;
	});
</script>

{#each providers as provider}
	<ProviderCard {provider} />
{/each}
