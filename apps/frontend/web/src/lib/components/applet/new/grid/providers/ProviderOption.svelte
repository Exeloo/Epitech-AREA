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
	let { provider = $bindable(), element = $bindable() }: Props = $props();

	let baseProviderStore = new BaseProviderStore();
	let providerWithManifestStore = new ProviderWithManifestStore();

	let info = $derived(baseProviderStore.get(provider));

	async function selectProvider() {
		if (!$info) return;

		const query = await load_getProviderById({
			variables: { id: $info.id },
			policy: 'NetworkOnly'
		});
		const { data, errors } = await query.getProviderById.fetch();

		console.log(errors);

		if (!data || !data.getProviderById) return;

		console.log(data);

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
		class="flex h-24 flex-col items-center justify-center dark:text-black"
		style="background-color: {$info.color};"
	>
		<img
			src={$info.img}
			alt={$info.name}
			class="flex w-8 items-center justify-center object-cover text-center"
		/>
	</button>
{/if}
