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

<div class="flex flex-col items-center">
	<div class="pb-14 text-4xl font-bold">Select your provider !</div>
	<div class="flex w-auto flex-wrap justify-center gap-8">
		{#each providers as provider}
			<ProviderCard {provider} />
		{/each}
	</div>
</div>
