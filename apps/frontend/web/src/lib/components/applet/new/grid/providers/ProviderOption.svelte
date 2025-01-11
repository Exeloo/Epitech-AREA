<script lang="ts">
	import {
		type BaseProvider,
		BaseProviderStore,
		load_getProviderById,
		ProviderWithManifestStore
	} from '$houdini';
	import type { ElementValues } from '$lib/components/applet/new/types';

	interface Props {
		provider: BaseProvider;
		element: ElementValues | null;
	}
	let { provider, element = $bindable() }: Props = $props();

	let baseProviderStore = new BaseProviderStore();
	let providerWithManifestStore = new ProviderWithManifestStore();

	let info = $state(baseProviderStore.get(provider));

	async function selectProvider() {
		if (!$info) return;

		const query = await load_getProviderById({ variables: { id: $info.id } });
		const { data } = await query.getProviderById.fetch();

		if (!data || !data.getProviderById) return;

		providerWithManifestStore.get(data.getProviderById).subscribe((provider) => {
			if (provider) {
				element = { providerId: $info.id, provider: provider, inputs: {}, actionId: undefined };
			}
		});
	}
</script>

{#if $info}
	<button
		onclick={selectProvider}
		class="flex h-full flex-col items-center justify-center"
		style="background-color: {$info.color};"
	>
		<img src={$info.img} alt="instagram" class="h-20 w-20" />
	</button>
{/if}
