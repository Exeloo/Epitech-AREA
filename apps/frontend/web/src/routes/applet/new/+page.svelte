<script lang="ts">
	import Block from '$lib/components/applet/new/Block.svelte';
	import { BlockType, type ElementValues } from '$lib/components/applet/new/types';
	/*	import {
load_getProviderOAuthState
} from '$houdini';*/
	import {
		type AppletNodeCreateInput,
		createAppletStore,
		load_getProviderById,
		ProviderWithManifestStore
	} from '$houdini';
	import CreateButton from '$lib/components/applet/new/CreateButton.svelte';
	import { onMount } from 'svelte';
	import { page } from '$app/state';

	const appletStore = new createAppletStore();
	let providerWithManifestStore = new ProviderWithManifestStore();

	let detail = $state(false);

	let name = $state('');
	let desc = $state('');

	let trigger: ElementValues | null = $state(null);
	let actions: (ElementValues | null)[] = $state([null]);

	let openTrigger = $state(false);
	let openAction = $state(false);

	function goToDetail() {
		if (trigger && actions) {
			detail = true;
		}
	}

	function addElement() {
		actions.push(null);
		console.log(actions);
	}

	function removeElement(index: number) {
		actions = [...actions.slice(0, index), ...actions.slice(index + 1)];
	}

	function isValidActions() {
		for (const action of actions) {
			if (!action || !action.actionId) return false;
		}
		return actions.length > 0 && trigger && trigger.actionId;
	}

	async function createApplet() {
		if (!trigger || !actions) return;

		let action: AppletNodeCreateInput | undefined = undefined;
		while (actions.length > 0) {
			const actionRaw = actions.pop();
			if (actionRaw)
				action = {
					providerId: actionRaw.providerId,
					actionId: actionRaw.actionId || '',
					input: JSON.stringify(actionRaw.inputs),
					next: action ? [action] : []
				};
		}

		const triggerNode = {
			providerId: trigger.providerId,
			actionId: trigger.actionId || '',
			input: JSON.stringify(trigger.inputs),
			next: action ? [action] : []
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

	onMount(async () => {
		const type = page.url.searchParams.get('type');
		const providerId = Number(page.url.searchParams.get('provider'));
		const actionId = page.url.searchParams.get('actionId');

		if (!type || !providerId || !actionId) {
			return;
		}

		const query = await load_getProviderById({
			variables: { id: providerId },
			policy: 'NetworkOnly'
		});
		const { data } = await query.getProviderById.fetch();

		if (!data || !data.getProviderById) return;

		providerWithManifestStore.get(data.getProviderById).subscribe((provider) => {
			if (!provider) return;
			if (type === 'action') {
				openAction = true;
				actions[0] = { providerId: providerId, provider: provider, inputs: {}, actionId: actionId };
			} else if (type === 'trigger') {
				openTrigger = true;
				trigger = { providerId: providerId, provider: provider, inputs: {}, actionId: actionId };
			}
		});
	});
</script>

<div class="my-20 flex w-[90%] max-w-[40rem] flex-col items-center gap-20">
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
		<div class="flex w-full flex-col items-center gap-16">
			<div class="ml-[10%] w-full">
				<Block
					title="If this"
					type={BlockType.Triggers}
					open={openTrigger}
					bind:element={trigger}
				/>
			</div>
			<div class="flex w-full flex-col items-center gap-8">
				<!-- eslint-disable-next-line @typescript-eslint/no-unused-vars -->
				{#each actions as action, index}
					<div class="ml-[10%] flex w-full items-center gap-5">
						<Block
							title="Then"
							type={BlockType.Actions}
							open={openAction && !index}
							bind:element={actions[index]}
						/>
						{#if index !== 0}
							<button
								aria-label="Delete Action"
								name="Delete Action"
								onclick={() => removeElement(index)}
							>
								<i class="fi fi-br-cross flex items-center justify-center text-4xl text-red-600"
								></i>
							</button>
						{/if}
					</div>
				{/each}
			</div>
			<button
				onclick={addElement}
				class="flex w-fit justify-center gap-2 rounded-full bg-primary px-12 py-3 text-2xl font-bold text-white"
			>
				Add action
			</button>
		</div>
		<CreateButton name="Continue" onclick={goToDetail} actif={!!isValidActions()} />
	{/if}
</div>
