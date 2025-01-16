<script lang="ts">
	import { type ProviderManifestTrigger, ProviderManifestTriggerStore } from '$houdini';
	import Element from '$lib/components/applet/new/grid/elements/Element.svelte';
	import type { ElementValues } from '$lib/components/applet/new/types';

	interface Props {
		providerId: number;
		trigger: ProviderManifestTrigger;
		element: ElementValues | null;
	}
	let { providerId, trigger, element = $bindable() }: Props = $props();

	let providerManifestTriggerStore = new ProviderManifestTriggerStore();

	let info = $derived(providerManifestTriggerStore.get(trigger));
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
