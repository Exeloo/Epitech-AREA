<script lang="ts">
	import { type ProviderManifestAction, ProviderManifestActionStore } from '$houdini';
	import Element from '$lib/components/applet/new/grid/elements/Element.svelte';
	import type { ElementValues } from '$lib/components/applet/new/types';

	interface Props {
		providerId: number;
		action: ProviderManifestAction;
		element: ElementValues | null;
	}
	let { providerId, action, element = $bindable() }: Props = $props();

	let providerManifestActionStore = new ProviderManifestActionStore();

	let info = $derived(providerManifestActionStore.get(action));
</script>

{#if $info}
	<Element
		id={$info.id}
		title={$info.name}
		description={$info.description}
		inputs={$info.input}
		{providerId}
		bind:element
	/>
{/if}
