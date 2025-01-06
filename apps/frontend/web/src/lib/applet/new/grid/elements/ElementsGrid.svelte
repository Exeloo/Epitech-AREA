<script lang="ts">
	import { BlockType } from '$lib/applet/new/types';
	import { type ProviderWithManifest$data } from '$houdini';
	import ActionElement from '$lib/applet/new/grid/elements/ActionElement.svelte';
	import TriggerElement from '$lib/applet/new/grid/elements/TriggerElement.svelte';

	interface Props {
		provider: ProviderWithManifest$data;
		type: BlockType;
	}
	let { provider, type }: Props = $props();
</script>

{#if type === BlockType.Actions}
	{#each provider.manifest.actions as action}
		<ActionElement {action} />
	{/each}
{:else if type === BlockType.Triggers}
	{#each provider.manifest.triggers as trigger}
		<TriggerElement {trigger} />
	{/each}
{/if}
