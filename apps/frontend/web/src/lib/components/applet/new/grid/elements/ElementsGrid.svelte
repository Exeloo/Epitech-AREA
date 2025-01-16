<script lang="ts">
	import { BlockType, type ElementValues } from '$lib/components/applet/new/types';
	import ActionElement from '$lib/components/applet/new/grid/elements/ActionElement.svelte';
	import TriggerElement from '$lib/components/applet/new/grid/elements/TriggerElement.svelte';

	interface Props {
		type: BlockType;
		element: ElementValues;
	}
	let { type, element = $bindable() }: Props = $props();
</script>

<div class="flex flex-col gap-4">
	{#if type === BlockType.Actions}
		{#each element.provider.manifest.actions as action}
			<ActionElement providerId={element.providerId} {action} bind:element />
		{/each}
	{:else if type === BlockType.Triggers}
		{#each element.provider.manifest.triggers as trigger}
			<TriggerElement providerId={element.providerId} {trigger} bind:element />
		{/each}
	{/if}
</div>
