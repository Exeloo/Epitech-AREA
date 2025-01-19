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
		type: 'trigger' | 'action';
		providerId: number;
	}
	let { action, type, providerId }: Props = $props();
</script>

{#if action}
	<a href="/applet/new?type={type}&provider={providerId}&actionId={action.id}">
		<Card color={action.color}>
			<div class="flex h-full flex-col items-center justify-center gap-6 text-white">
				{#if action.img}
					<img
						src={action.img}
						alt={`Image describe ${action.name} Action`}
						class="img-svg h-20 w-20"
					/>
				{/if}
				<h3 class="text-3xl font-bold">{action.name}</h3>
				<p class="">{action.description}</p>
			</div>
		</Card>
	</a>
{/if}

<style>
	.img-svg {
		filter: invert(100%) sepia(100%) saturate(0%) hue-rotate(192deg) brightness(105%) contrast(101%);
	}
</style>
