<script lang="ts">
	import { onMount } from 'svelte';
	import {
		type AppletNodeCreateInput,
		BaseAppletStore,
		createAppletStore,
		DeleteAppletStore,
		type getAppletById$result,
		type getAppletNodeById$result,
		load_getAppletById,
		load_getAppletNodeById
	} from '$houdini';
	import { page } from '$app/stores';
	import ActionBlock from '$lib/components/explore/card/ActionBlock.svelte';
	import ConfirmDeletionModal from '$lib/components/ux/ConfirmDeletionModal.svelte';

	let deleteAppletStore = new DeleteAppletStore();
	let createApplet = new createAppletStore();
	let baseAppletStore = new BaseAppletStore();

	let id = $page.params.id;

	let applet: getAppletById$result['getAppletById'] | undefined = $state(undefined);
	let trigger: getAppletNodeById$result['getAppletNodeById'] | undefined = $state(undefined);
	let actions: getAppletNodeById$result['getAppletNodeById'][] = $state([]);

	let deletionModal = $state(false);

	async function deleteApplet() {
		const query = await deleteAppletStore.mutate({ deleteAppletId: +id });
		if (!query.data) {
			new Error('Internal Server Error');
			return query.errors;
		}

		window.location.href = '/';
	}

	async function updateApplet() {
		if (!applet || !trigger || !actions) return;

		let action: AppletNodeCreateInput | undefined = undefined;
		while (actions.length > 0) {
			const actionRaw = actions.pop();
			if (actionRaw)
				action = {
					providerId: actionRaw.provider.id,
					actionId: actionRaw.actionId || '',
					input: actionRaw.input,
					next: action ? [action] : []
				};
		}

		const triggerNode = {
			providerId: trigger.provider.id,
			actionId: trigger.actionId || '',
			input: trigger.input,
			next: action ? [action] : []
		};

		try {
			const newApplet = await createApplet.mutate({
				data: {
					name: applet.name,
					description: applet.description,
					triggerNodes: [triggerNode]
				}
			});

			if (!newApplet.data) {
				new Error(newApplet.errors ? newApplet.errors.toString() : 'Internal Server Error');
				return;
			}

			let newAppletData = baseAppletStore.get(newApplet.data.createApplet);

			console.log(newAppletData);

			console.log('Applet created successfully!');
			newAppletData.subscribe((data) => {
				if (!data) {
					throw new Error('Internal Server Error');
				}
				window.location.href = `/explore/applets/${data.id}`;
			});
		} catch (error) {
			console.error('Failed to create applet:', error);
		}

		const query = await deleteAppletStore.mutate({ deleteAppletId: +id });
		if (!query.data) {
			new Error('Internal Server Error');
			return query.errors;
		}
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

<div class="flex w-full flex-col items-start justify-between gap-10 px-10 py-10">
	<div class="flex w-full justify-between">
		<a
			href="/explore/applets"
			class="flex items-center justify-center gap-1 self-start text-2xl duration-100 md:text-4xl"
		>
			<i class="fi fi-rr-arrow-small-left flex items-center justify-center"></i>
			Back
		</a>
		<button
			onclick={() => (deletionModal = true)}
			aria-label="delete applet"
			class="flex h-fit items-center justify-center gap-2 self-center rounded-full bg-red-500 px-16 py-3 text-xl font-semibold text-white"
		>
			<i class="fi fi-sr-trash flex items-center justify-center"></i>
			Remove
		</button>
	</div>
	{#if applet}
		<div class="flex flex-col justify-center">
			<input
				class="rounded-xl border-2 border-gray-200 bg-gray-50 p-1 text-5xl font-bold"
				bind:value={applet.name}
			/>
			<textarea
				class="mt-4 rounded-xl border-2 border-gray-200 bg-gray-50 p-1 text-2xl"
				rows="3"
				bind:value={applet.description}
			></textarea>
		</div>
		{#if trigger}
			<div class="mt-20 flex w-full flex-col items-center gap-10">
				<ActionBlock title="Trigger" bind:action={trigger} />
				<!-- eslint-disable-next-line @typescript-eslint/no-unused-vars -->
				{#each actions as action, i}
					<ActionBlock title="Action" bind:action={actions[i]} />
				{/each}
			</div>
		{/if}
	{/if}
	<button
		onclick={updateApplet}
		aria-label="delete applet"
		class="flex h-fit items-center justify-center gap-2 self-center rounded-full bg-primary px-16 py-4 text-3xl font-semibold text-white"
	>
		<i class="fi fi-sr-pen-square flex items-center justify-center"></i>
		Update
	</button>
</div>
<ConfirmDeletionModal bind:open={deletionModal} onDeleteConfirm={deleteApplet} />
