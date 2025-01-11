<script lang="ts">
	import Card from '$lib/components/explore/card/Card.svelte';
	import { BaseProviderStore, type BaseProvider } from '$houdini';

	interface Props {
		provider: BaseProvider;
	}
	let { provider }: Props = $props();

	let info = $state(new BaseProviderStore().get(provider));
</script>

{#if $info}
	<Card color={$info.color}>
		<div class="flex h-full flex-col items-center justify-center gap-6">
			<img src={$info.img} alt="instagram" class="h-20 w-20" />
			<h3 class="text-3xl font-bold text-black">{$info.name}</h3>
		</div>
	</Card>
{/if}
