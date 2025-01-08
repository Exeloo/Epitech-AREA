<script lang="ts">
	import Block from '$lib/applet/new/Block.svelte';
	import { BlockType, type ElementValues } from '$lib/applet/new/types';
	import { createAppletStore } from '$houdini';

	const appletStore = new createAppletStore();

	let trigger: ElementValues | null = $state(null);
	let action: ElementValues | null = $state(null);

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
</script>

<div class="mt-20 flex flex-col items-center gap-20">
	<Block title="If this" type={BlockType.Triggers} focus={true} bind:element={trigger} />
	<Block title="Then" type={BlockType.Actions} bind:element={action} />
	<button
		onclick={createApplet}
		class="w-fit rounded-full bg-primary px-4 py-2 text-xl font-bold text-white"
	>
		Create applet
	</button>
</div>
