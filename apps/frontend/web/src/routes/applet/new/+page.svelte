<script lang="ts">
	import Block from '$lib/components/applet/new/Block.svelte';
	import { BlockType, type ElementValues } from '$lib/components/applet/new/types';
	/*	import {
load_getProviderOAuthState
} from '$houdini';*/
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

		const triggerNode = {
			providerId: trigger.providerId,
			actionId: trigger.actionId || '',
			input: JSON.stringify(trigger.inputs),
			next: [
				{
					providerId: action.providerId,
					actionId: action.actionId || '',
					input: JSON.stringify(action.inputs),
					next: []
				}
			]
		};

		try {
			await appletStore.mutate({
				data: {
					name: name,
					description: desc,
					triggerNodes: [triggerNode]
				}
			});
			console.log('Applet created successfully!');
			window.location.href = '/explore/applets/';
		} catch (error) {
			console.error('Failed to create applet:', error);
		}
	}
</script>

<div class="mt-20 flex w-1/2 flex-col items-center gap-20 sm:w-1/3 md:w-1/5">
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
