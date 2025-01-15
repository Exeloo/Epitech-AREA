<script lang="ts">
	import ActionCard from '$lib/components/explore/card/ActionCard.svelte';

	interface Props {
		actions: {
			id: string;
			name: string;
			description: string;
			img: string;
			color: string;
			input: any;
			output: any;
		}[];
		name: string;
	}

	const { actions, name }: Props = $props();
</script>

{#if actions.length > 0}
	<div class="my-20 w-full">
		<h2 class="my-10 text-5xl font-bold">{name}</h2>
		<div class="grid w-full gap-8 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
			{#each actions as action}
				<ActionCard {action} />
			{/each}
		</div>
	</div>
{/if}
