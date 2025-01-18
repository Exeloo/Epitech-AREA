<script lang="ts">
	import { onMount } from 'svelte';
	import {
		type getProviderById$result,
		type getProviderOAuthState$result,
		load_getProviderById,
		load_getProviderOAuthState
	} from '$houdini';
	import { page } from '$app/stores';
	import ActionCardList from '$lib/components/explore/list/ActionCardList.svelte';

	let id = $page.params.id;

	let provider: getProviderById$result['getProviderById'] | undefined = $state(undefined);
	let authState: getProviderOAuthState$result['getProviderOAuthState'] | undefined =
		$state(undefined);

	const connectToApplet = () => {
		if (!authState || !authState.redirectUri) return;
		window.open(authState.redirectUri, 'Aether OAuth', 'width=1000,height=1000');
	};

	onMount(async () => {
		const query = await load_getProviderById({ variables: { id: +id } });
		const { data } = await query.getProviderById.fetch({});

		if (!data || !data.getProviderById) return;

		provider = data.getProviderById;

		const queryState = await load_getProviderOAuthState({
			variables: { id: provider.id }
		});
		const { data: dataState } = await queryState.getProviderOAuthState.fetch();
		if (!dataState || !dataState.getProviderOAuthState) return;

		authState = dataState.getProviderOAuthState;
	});
</script>

{#if provider}
	<div class="w-full pt-10">
		<div
			style="background-color: {provider.color};"
			class="pt-15 absolute left-0 top-0 flex h-[35rem] w-full flex-col items-center justify-center gap-6 text-white"
		>
			<a
				href="/explore/providers"
				class="absolute left-10 top-32 flex items-center justify-center gap-1 text-2xl duration-100 md:text-4xl"
			>
				<i class="fi fi-rr-arrow-small-left flex items-center justify-center"></i>
				Back
			</a>
			{#if provider.img}
				<img src={provider.img} alt="Image describe {provider.name} Provider" class="h-20 w-20" />
			{/if}
			<h1 class="text-7xl font-bold">{provider.name}</h1>
			<div class="text-2xl italic">{provider.description}</div>
		</div>
		<div class="pt-[27rem]">
			{#if authState && authState.redirectUri}
				<div class="flex w-full items-center justify-center">
					<button
						onclick={connectToApplet}
						class="mt-14 rounded-full bg-primary px-8 py-4 text-2xl font-bold text-white duration-200 hover:bg-light_primary"
						>Connect a new account to the provider</button
					>
				</div>
			{/if}
			<ActionCardList actions={provider.manifest.triggers} name="Triggers" />
			<ActionCardList actions={provider.manifest.actions} name="Actions" />
		</div>
	</div>
{/if}
