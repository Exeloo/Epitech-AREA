<script lang="ts">
	import { type ProviderManifestTrigger, ProviderManifestTriggerStore } from '$houdini';
	import Element from '$lib/applet/new/grid/elements/Element.svelte';

	interface Props {
		trigger: ProviderManifestTrigger;
	}
	let { trigger }: Props = $props();

	let providerManifestTriggerStore = new ProviderManifestTriggerStore();

	let info = $derived(providerManifestTriggerStore.get(trigger));
</script>

{#if $info}
	<Element title={$info.name} description={$info.description} inputs={$info.input} />
{/if}
