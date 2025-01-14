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

	const {actions, name}: Props = $props();
</script>

{#if actions.length > 0}
	<div class="w-full my-20">
		<h2 class="text-5xl font-bold my-10">{name}</h2>
		<div class="grid w-full gap-8 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
			{#each actions as action}
				<ActionCard action={action} />
			{/each}
		</div>
	</div>
{/if}
