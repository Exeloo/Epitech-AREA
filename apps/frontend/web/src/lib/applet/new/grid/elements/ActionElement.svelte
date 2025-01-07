<script lang="ts">
	import { type ProviderManifestAction, ProviderManifestActionStore } from '$houdini';
	import Element from '$lib/applet/new/grid/elements/Element.svelte';
	import type { ElementValues } from '$lib/applet/new/types';

	interface Props {
		action: ProviderManifestAction;
		element: ElementValues | null;
	}
	let { action, element = $bindable() }: Props = $props();

	let providerManifestActionStore = new ProviderManifestActionStore();

	let info = $derived(providerManifestActionStore.get(action));
</script>

{#if $info}
	<Element title={$info.name} description={$info.description} inputs={$info.input} bind:element />
{/if}
