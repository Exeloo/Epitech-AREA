<script lang="ts">
	import { type ProviderManifestAction, ProviderManifestActionStore } from '$houdini';
	import Element from '$lib/applet/new/grid/elements/Element.svelte';

	interface Props {
		action: ProviderManifestAction;
	}
	let { action }: Props = $props();

	let providerManifestActionStore = new ProviderManifestActionStore();

	let info = $derived(providerManifestActionStore.get(action));
</script>

{#if $info}
	<Element title={$info.name} description={$info.description} inputs={$info.input} />
{/if}
