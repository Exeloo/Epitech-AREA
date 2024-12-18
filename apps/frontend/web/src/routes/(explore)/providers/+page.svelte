<script lang="ts">
	import ProviderCard from '$lib/card/ProviderCard.svelte';
	import { onMount } from 'svelte';
	import { load_GetAllProviders } from '$houdini';

	onMount(async () => {
		const query = await load_GetAllProviders({});
		const { data } = await query.GetAllProviders.fetch({});

		console.log(data);
	});
</script>

<ProviderCard />
<ProviderCard />
<ProviderCard />
<ProviderCard />
<ProviderCard />
<ProviderCard />
<ProviderCard />
<ProviderCard />
<ProviderCard />
