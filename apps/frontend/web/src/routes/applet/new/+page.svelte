<script lang="ts">
	import Block from '$lib/components/applet/new/Block.svelte';
	import { BlockType, type ElementValues } from '$lib/components/applet/new/types';
	import { type AppletNodeCreateInput, createAppletStore } from '$houdini';
	import { actionsStore } from '$lib/components/applet/new/stores';

	let actions: ElementValues[] = [];

	actionsStore.subscribe((act) => {
		actions = act;
	});

	const appletStore = new createAppletStore();

	function getActionsNode(elem: ElementValues[]): AppletNodeCreateInput | undefined {
		let action = elem.shift();
		if (action) {
			const nextNode = getActionsNode(elem);
			return {
				providerId: action.providerId,
				actionId: action.actionId || '',
				input: action.inputs,
				next: nextNode ? [nextNode] : []
			};
		}
	}

	async function createApplet() {
		if (actions.length < 2) return;

		const triggerNode = getActionsNode(actions);

		if (!triggerNode) return;

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
</script>

<div class="mt-20 flex flex-col items-center gap-20">
	<Block title="If this" type={BlockType.Triggers} focus={true} bind:element={actions[0]} />
	<Block title="Then" type={BlockType.Actions} bind:element={actions[1]} />
	<button
		onclick={createApplet}
		class="flex w-fit justify-center gap-2 rounded-full bg-primary px-4 py-2 text-xl font-bold text-white"
	>
		Continue
		<i class="fi fi-rr-angle-right flex items-center justify-center"></i>
	</button>
</div>
