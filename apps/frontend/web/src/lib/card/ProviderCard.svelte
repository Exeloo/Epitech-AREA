<script lang="ts">
	import Card from '$lib/card/Card.svelte';

	export let provider: {
		id: string;
		name: string;
		description: string;
		img: string;
		color: string;
	};
</script>

<Card color={provider.color} class="cursor-pointer">
	<button
		type="button"
		class="flex h-full w-full flex-col items-center justify-center gap-4"
		on:click
	>
		<img src={provider.img} alt={provider.name} class="h-40 w-40" />
		<h3 class="text-xl font-bold text-black">{provider.name}</h3>
	</button>
</Card>
