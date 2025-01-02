<script lang="ts">
	import Card from '$lib/card/Card.svelte';
	import { graphql, fragment, type BaseProvider } from '$houdini';

	interface Props {
		provider: BaseProvider;
	}

	let { provider }: Props = $props();

	let info = $state(
		fragment(
			provider,
			graphql(`
				fragment BaseProvider on Provider {
					id
					name
					description
					img
					color
					visibility
				}
			`)
		)
	);
</script>

<Card color={$info.color}>
	<div class="flex h-full flex-col items-center justify-center gap-6">
		<img src={$info.img} alt="instagram" class="h-20 w-20" />
		<h3 class="text-3xl font-bold text-black">{$info.name}</h3>
	</div>
</Card>
