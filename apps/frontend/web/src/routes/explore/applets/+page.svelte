<script lang="ts">
	import AppletCard from '$lib/components/explore/card/AppletCard.svelte';
	import { onMount } from 'svelte';
	import { load_getAllApplets } from '$houdini';

	let applets: any[] = [];

	onMount(async () => {
		const query = await load_getAllApplets({});
		const { data } = await query.getAllApplets.fetch({});

		if (!data || !data.getAllApplets) return;

		applets = data.getAllApplets;
	});
</script>

{#if applets.length > 0}
	<div class="flex w-auto flex-wrap justify-center gap-8">
		{#each applets as applet}
			<AppletCard {applet} />
		{/each}
	</div>
{:else}
	<div class="flex h-full flex-col items-center justify-center gap-4">
		<i class="fi fi-sr-empty-set text-7xl"></i>
		<div class="flex flex-col items-center justify-center gap-2">
			<span class="font-medium">You haven't created an applet yet !</span>
			<a href="/applet/new/" class="text-xl font-extrabold text-purple-500">Get started</a>
		</div>
	</div>
{/if}
