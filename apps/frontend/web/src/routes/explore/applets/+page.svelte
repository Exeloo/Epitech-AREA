<script lang="ts">
	import {page} from '$app/stores';
	import AppletCard from '$lib/components/explore/card/AppletCard.svelte';
	import {onMount} from 'svelte';
	import {BaseAppletStore, load_getAllApplets} from '$houdini';

	let baseApplet = new BaseAppletStore();
	let applets: { readonly ' $fragments': { BaseApplet: {} } }[] = $state([]);
	let filteredApplets: { readonly ' $fragments': { BaseApplet: {} } }[] = $state([]);
	let query: string | null | undefined = $state(null);

	page.subscribe((page) => {
		query = page.url?.searchParams?.get('query');
		filterApplet();
	});

	function filterApplet() {
		if (!query || query === '') {
			filteredApplets = applets;
			return;
		}
		let filtered: { readonly ' $fragments': { BaseApplet: {} } }[] = [];

		applets.forEach((applet) => {
			let info = baseApplet.get(applet);
			info.subscribe((data) => {
				if (data && query) {
					if (
						data.name.toLowerCase().includes(query.toLowerCase()) ||
						data.description?.toLowerCase().includes(query.toLowerCase())
					) {
						filtered.push(applet);
					}
				}
			});
		});

		filteredApplets = filtered;
	}

	onMount(async () => {
		const queryData = await load_getAllApplets({});
		const { data } = await queryData.getAllApplets.fetch({});
		if (data && data.getAllApplets) {
			applets = data.getAllApplets;
			filterApplet();
		}
	});

	$effect(() => {
		filterApplet();
	});
</script>

{#if filteredApplets.length > 0}
	<div class="flex w-auto flex-wrap justify-center gap-8">
		{#each filteredApplets as applet, i}
			<span class="hidden">{applet}</span>
			<AppletCard bind:applet={filteredApplets[i]} />
		{/each}
	</div>
{:else}
	<div class="flex h-[720px] flex-col items-center justify-center gap-4">
		<i class="fi fi-sr-empty-set text-7xl"></i>
		<div class="flex flex-col items-center justify-center gap-2 pb-16">
			{#if applets.length > 0}
				<span class="font-3xl">No applets found</span>
			{:else}
				<span class="font-3xl">You haven't created an applet yet !</span>
				<a href="/applet/new/" class="text-4xl font-extrabold text-purple-500">Get started</a>
			{/if}
		</div>
	</div>
{/if}
