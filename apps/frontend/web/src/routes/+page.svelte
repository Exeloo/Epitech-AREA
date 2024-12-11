<script>
	import Card from '$lib/card/Card.svelte';
	import { load_GetAllApplets } from '$houdini';
	import {onMount} from "svelte";

	onMount(async () => {
		const query = await load_GetAllApplets({});
		const { data, errors } = await query.GetAllApplets.fetch({});
	})
</script>

<div class="p-10">
	<h2 class="mb-10 text-2xl font-bold">Explore</h2>
	<div class="grid w-full grid-cols-5 gap-5">
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
