<script>
	import Card from '$lib/card/Card.svelte';
	import { onMount } from 'svelte';

	onMount(async () => {
		//const query = await load_GetAllProviders({});
		//const { data, errors } = await query.GetAllProviders.fetch({});
	});
</script>

<div class="p-10">
	<h2 class="mb-10 text-2xl font-bold">Explore</h2>
	<div class="grid w-full gap-8 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
		<Card />
		<Card />
		<Card />
		<Card />
		<Card />
		<Card />
		<Card />
		<Card />
		<Card />
	</div>
</div>
