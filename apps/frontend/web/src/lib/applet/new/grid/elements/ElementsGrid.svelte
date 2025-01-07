<script lang="ts">
	import { BlockType, type ElementValues } from '$lib/applet/new/types';
	import ActionElement from '$lib/applet/new/grid/elements/ActionElement.svelte';
	import TriggerElement from '$lib/applet/new/grid/elements/TriggerElement.svelte';

	interface Props {
		type: BlockType;
		element: ElementValues;
	}
	let { type, element = $bindable() }: Props = $props();
</script>

{#if type === BlockType.Actions}
	{#each element.provider.manifest.actions as action}
		<ActionElement {action} bind:element />
	{/each}
{:else if type === BlockType.Triggers}
	{#each element.provider.manifest.triggers as trigger}
		<TriggerElement {trigger} bind:element />
	{/each}
{/if}
