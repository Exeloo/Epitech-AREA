<script lang="ts">
	import { onMount } from 'svelte';
	import {
		type getAppletById$result,
		type getAppletNodeById$result,
		load_getAppletById,
		load_getAppletNodeById
	} from '$houdini';
	import { page } from '$app/stores';
	import ActionBlock from '$lib/components/explore/card/ActionBlock.svelte';

	let id = $page.params.id;

	let applet: getAppletById$result['getAppletById'] | undefined = $state(undefined);
	let trigger: getAppletNodeById$result['getAppletNodeById'] | undefined = $state(undefined);
	let actions: getAppletNodeById$result['getAppletNodeById'][] = $state([]);

	onMount(async () => {
		const query = await load_getAppletById({ variables: { id: +id } });
		const { data } = await query.getAppletById.fetch({});

		if (!data || !data.getAppletById) return;

		applet = data.getAppletById;

		let queryTrigger = await load_getAppletNodeById({
			variables: { id: applet.triggerNodes[0].id }
		});
		let { data: dataTrigger } = await queryTrigger.getAppletNodeById.fetch({});
		if (!dataTrigger || !dataTrigger.getAppletNodeById) return;
		trigger = dataTrigger.getAppletNodeById;
		let curr = trigger;

		while (curr.next.length > 0) {
			const queryNode = await load_getAppletNodeById({ variables: { id: curr.next[0].id } });
			const { data: dataNode } = await queryNode.getAppletNodeById.fetch({});
			if (!dataNode || !dataNode.getAppletNodeById) return;
			curr = dataNode.getAppletNodeById;
			actions.push(curr);
		}
	});
</script>

<div>
	<a
		href="/explore/applets"
		class="absolute left-10 top-32 flex items-center justify-center gap-1 text-2xl duration-100 md:text-4xl"
	>
		<i class="fi fi-rr-arrow-small-left flex items-center justify-center"></i>
		Back
	</a>
	{#if applet && trigger}
		<div class="mt-20 flex w-full flex-col items-center gap-20">
			<ActionBlock title="Trigger" action={trigger} />
			{#each actions as action}
				<ActionBlock title="Action" {action} />
			{/each}
		</div>
	{/if}
</div>
