<script lang="ts">
	import { onMount } from 'svelte';
	import { type getProviderById$result, load_getProviderById } from '$houdini';
	import { page } from '$app/stores';
	import ActionCardList from '$lib/components/explore/list/ActionCardList.svelte';

	let id = $page.params.id;

	let provider: getProviderById$result["getProviderById"] | undefined = $state(undefined);

	onMount(async () => {
		const query = await load_getProviderById({variables: {id: +id}});
		const { data } = await query.getProviderById.fetch({});

		if (!data || !data.getProviderById) return;

		provider = data.getProviderById;
	});
</script>

{#if provider}
	<div class="pt-10 w-full">
		<div style="background-color: {provider.color};" class="absolute w-full left-0 top-0 h-[35rem] pt-15 flex flex-col items-center justify-center gap-6">
			<a href="/explore/providers" class="flex items-center justify-center gap-1 text-2xl md:text-4xl absolute top-32 left-10 duration-100">
				<i class="fi fi-rr-arrow-small-left flex items-center justify-center"></i>
				Back
			</a>
			{#if provider.img}
				<img src={provider.img} alt={`Image describe ${provider.name} Provider`} class="h-20 w-20" />
			{/if}
			<h1 class="text-7xl font-bold">{provider.name}</h1>
			<div class="text-2xl italic">{provider.description}</div>
		</div>
		<div class="pt-[27rem]">
			<ActionCardList actions={provider.manifest.triggers} name="Triggers" />
			<ActionCardList actions={provider.manifest.actions} name="Actions" />
		</div>
	</div>
{/if}
