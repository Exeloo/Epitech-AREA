<script lang="ts">
	import Block from '$lib/components/applet/new/Block.svelte';
	import { BlockType, type ElementValues } from '$lib/components/applet/new/types';
	import {
		type AppletNodeCreateInput,
		createAppletStore,
		load_getProviderOAuthState
	} from '$houdini';
	import { actionsStore } from '$lib/components/applet/new/stores';

	let actions: ElementValues[] = $state([]);

	actionsStore.subscribe((act) => {
		actions = act;
	});
	import { createAppletStore } from '$houdini';
	import CreateButton from '$lib/components/applet/new/CreateButton.svelte';

	const appletStore = new createAppletStore();

	let detail = $state(false);

	let name = $state('');
	let desc = $state('');

	let trigger: ElementValues | null = $state(null);
	let action: ElementValues | null = $state(null);

	function goToDetail() {
		if (trigger && action) {
			detail = true;
		}
	}

	async function createApplet() {
		if (!trigger || !action) return;

		console.log(trigger);
		console.log(action);
		const triggerNode = {
			providerId: trigger.providerId,
			actionId: trigger.actionId || '',
			input: trigger.inputs,
			next: [
				{
					providerId: action.providerId,
					actionId: action.actionId || '',
					input: action.inputs,
					next: []
				}
			]
		};

		try {
			await appletStore.mutate({
				data: {
					name: 'Test',
					description: 'Test description',
					triggerNodes: [triggerNode]
				}
			});
			console.log('Applet created successfully!');
		} catch (error) {
			console.error('Failed to create applet:', error);
		}
	}

	const testNode = async (providerId: number): Promise<boolean> => {
		const query = await load_getProviderOAuthState({
			variables: { id: providerId },
			policy: 'NetworkOnly'
		});
		const { data } = await query.getProviderOAuthState.fetch();
		if (!data || !data.getProviderOAuthState) return false;
		if (data.getProviderOAuthState.authenticated || !data.getProviderOAuthState.redirectUri)
			return true;
		window.open(data.getProviderOAuthState.redirectUri, 'Aether OAuth', 'width=1000,height=1000');
		return false;
	};
</script>

<div class="mt-20 flex w-1/5 flex-col items-center gap-20">
	{#if detail}
		<div class="w-full">
			<label for="name">Name</label>
			<input id="name" bind:value={name} class="h-10 w-full rounded dark:bg-gray-500" />
		</div>
		<div class="w-full">
			<label for="desc">Description</label>
			<textarea id="desc" bind:value={desc} class="h-24 w-full rounded dark:bg-gray-500"></textarea>
		</div>
		<CreateButton name="create" onclick={createApplet} actif={!!(name && desc)} />
	{:else}
		<Block title="If this" type={BlockType.Triggers} focus={true} bind:element={trigger} />
		<Block title="Then" type={BlockType.Actions} bind:element={action} />
		<CreateButton name="continue" onclick={goToDetail} actif={!!(action && trigger)} />
	{/if}
</div>
