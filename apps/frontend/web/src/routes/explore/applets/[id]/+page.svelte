<script lang="ts">
	import { onMount } from 'svelte';
	import {
		DeleteAppletStore,
		type getAppletById$result,
		type getAppletNodeById$result,
		load_getAppletById,
		load_getAppletNodeById
	} from '$houdini';
	import { page } from '$app/stores';
	import ActionBlock from '$lib/components/explore/card/ActionBlock.svelte';

	let deleteAppletStore = new DeleteAppletStore();

	let id = $page.params.id;

	let applet: getAppletById$result['getAppletById'] | undefined = $state(undefined);
	let trigger: getAppletNodeById$result['getAppletNodeById'] | undefined = $state(undefined);
	let actions: getAppletNodeById$result['getAppletNodeById'][] = $state([]);

	async function deleteApplet() {
		const query = await deleteAppletStore.mutate({ deleteAppletId: +id });
		if (!query.data) {
			new Error('Internal Server Error');
			return query.errors;
		}

		window.location.href = '/';
	}

	onMount(async () => {
		const query = await load_getAppletById({ variables: { id: +id } });
		const { data } = await query.getAppletById.fetch({});

		if (!data || !data.getAppletById) return;

		applet = data.getAppletById;

		if (applet.triggerNodes.length <= 0) return;

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

<div class="flex w-full justify-between px-10">
	<a
		href="/explore/applets"
		class="flex items-center justify-center gap-1 text-2xl duration-100 md:text-4xl"
	>
		<i class="fi fi-rr-arrow-small-left flex items-center justify-center"></i>
		Back
	</a>
	{#if applet}
		<div class="mt-12">
			<div class="text-5xl font-bold">
				{applet.name}
			</div>
			<div class="mt-4 text-2xl">
				{applet.description}
			</div>
		</div>
		{#if trigger}
			<div class="mt-20 flex w-full flex-col items-center gap-20">
				<ActionBlock title="Trigger" action={trigger} />
				{#each actions as action}
					<ActionBlock title="Action" {action} />
				{/each}
			</div>
		{/if}
	{/if}
	<button
		onclick={deleteApplet}
		aria-label="delete applet"
		class="mt-14 flex h-fit items-center justify-center gap-2 rounded-full bg-red-500 px-4 py-2 text-xl font-semibold"
	>
		<i class="fi fi-sr-trash flex items-center justify-center"></i>
		Remove
	</button>
</div>
