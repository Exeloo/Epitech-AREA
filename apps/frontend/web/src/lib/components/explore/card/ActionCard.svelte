<script lang="ts">
	import Card from '$lib/components/explore/card/Card.svelte';

	interface Props {
		action: {
			id: string;
			name: string;
			description: string;
			img: string;
			color: string;
			input: any;
			output: any;
		};
	}
	let { action }: Props = $props();
</script>

{#if action}
	<Card color={action.color}>
		<div class="flex h-full flex-col items-center justify-center gap-6 text-white">
			{#if action.img}
				<img src={action.img} alt={`Image describe ${action.name} Action`} class="h-20 w-20" />
			{/if}
			<h3 class="text-3xl font-bold">{action.name}</h3>
			<p class="">{action.description}</p>
		</div>
	</Card>
{/if}
