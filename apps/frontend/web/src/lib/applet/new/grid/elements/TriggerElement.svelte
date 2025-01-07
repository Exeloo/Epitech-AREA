<script lang="ts">
	import { type ProviderManifestTrigger, ProviderManifestTriggerStore } from '$houdini';
	import Element from '$lib/applet/new/grid/elements/Element.svelte';
	import type { ElementValues } from '$lib/applet/new/types';

	interface Props {
		trigger: ProviderManifestTrigger;
		element: ElementValues | null;
	}
	let { trigger, element = $bindable() }: Props = $props();

	let providerManifestTriggerStore = new ProviderManifestTriggerStore();

	let info = $derived(providerManifestTriggerStore.get(trigger));
</script>

{#if $info}
	<Element title={$info.name} description={$info.description} inputs={$info.input} bind:element />
{/if}
