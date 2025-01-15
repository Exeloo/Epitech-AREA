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

{#each applets as applet}
	<AppletCard {applet} />
{/each}
