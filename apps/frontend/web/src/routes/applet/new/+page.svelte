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
		await appletStore.mutate({
			data: {
				name: 'Applet',
				description: 'new Applet',
				triggerNodes: []
			}
		});
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
